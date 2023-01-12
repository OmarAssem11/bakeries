const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp(functions.config().functions);

const db = admin.firestore();

exports.acceptOrder = functions.firestore
  .document("users/{userId}/orders/{orderId}")
  .onCreate(async (_snapshot, context) => {
    const docSnapshot = await db
      .collection("users")
      .doc(context.params.userId)
      .get();
    const token = docSnapshot.data()["token"];
    const data = {
      message: {
        token: token,
        notification: {
          title: "Order Accepted",
          body: "Your order has been accepted, and it's preparing now",
        },
        data: {
          click_action: "FLUTTER_NOTIFICATION_CLICK",
        },
      },
    };
    setTimeout(() => {
      admin.messaging().send(data.message);
    }, 60000);
  });
