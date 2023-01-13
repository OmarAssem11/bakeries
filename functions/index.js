const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp(functions.config().functions);

const db = admin.firestore();

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
