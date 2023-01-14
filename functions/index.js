const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp(functions.config().functions);

const db = admin.firestore();

exports.addToCart = functions.firestore
  .document("users/{userId}/cart/{cartProductId}")
  .onCreate(async (snapshot, context) => {
    const cartCollection = db
      .collection("users")
      .doc(context.params.userId)
      .collection("cart");
    const cartQuerySnapshot = await cartCollection.get();
    const cartDocs = cartQuerySnapshot.docs;
    if (cartDocs.length === 0) return;
    const cartProductsFromCartCollection = cartDocs.map((queryDocSnapshot) =>
      queryDocSnapshot.data()
    );
    const productsCollection = db.collection("products");
    const productDocSnapshot = await productsCollection
      .doc(context.params.cartProductId)
      .get();
    const product = productDocSnapshot.data();
    const cartProducts = await Promise.all(
      cartProductsFromCartCollection.map(async (cartProduct) => {
        const docSnapshot = await productsCollection
          .doc(cartProduct.productModel.id)
          .get();
        return docSnapshot.data();
      })
    );
    let productIsFromDifferentBakery = false;
    let productAlreadyExistInCart = false;
    for (const cartProduct of cartProducts) {
      if (product.bakeryId !== cartProduct.bakeryId) {
        productIsFromDifferentBakery = true;
        break;
      } else if (product.id === cartProduct.id) {
        productAlreadyExistInCart = true;
        break;
      }
    }
    if (productIsFromDifferentBakery) {
      return Promise.all(
        cartQuerySnapshot.docs.map(async (cartDocSnapshot) => {
          if (
            cartDocSnapshot.data().productModel.id !==
            productDocSnapshot.data().id
          )
            await cartDocSnapshot.ref.delete();
        })
      );
    } else if (productAlreadyExistInCart) {
      const oldCartProduct = cartProductsFromCartCollection.find(
        (cartProduct) => {
          return cartProduct.productModel.id === product.id;
        }
      );
      return cartCollection.doc(product.id).update({
        quantity: oldCartProduct.quantity + snapshot.data().quantity,
      });
    }
  });

exports.acceptOrder = functions.firestore
  .document("users/{userId}/orders/{orderId}")
  .onCreate(async (snapshot, context) => {
    const userSnapshot = await db
      .collection("users")
      .doc(context.params.userId)
      .get();
    const token = userSnapshot.data().fcmToken;
    const data = {
      message: {
        token: token,
        notification: {
          title: "Order Accepted",
          body: `Your order from ${
            snapshot.data().orderProductsModels[0].bakeryName
          } has been accepted, and it's preparing now`,
        },
        data: {
          click_action: "FLUTTER_NOTIFICATION_CLICK",
        },
      },
    };
    setTimeout(async () => {
      const orderSnapshot = await snapshot.ref.get();
      if (orderSnapshot.data().status !== "cancelled") {
        await snapshot.ref.update({
          status: "preparing",
        });
        return admin.messaging().send(data.message);
      }
    }, 60000);
  });
