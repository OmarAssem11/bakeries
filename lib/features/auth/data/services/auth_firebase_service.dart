import 'package:bakery/core/data/constants/firebase_path.dart';
import 'package:bakery/core/data/models/user_model.dart';
import 'package:bakery/features/auth/data/models/login_data_model/login_data_model.dart';
import 'package:bakery/features/auth/data/models/register_data_model/register_data_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthFirebaseService {
  final _usersCollection =
      FirebaseFirestore.instance.collection(FirebasePath.users);

  Future<UserModel> register(RegisterDataModel registerModel) async {
    final userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: registerModel.email,
      password: registerModel.password,
    );
    final uId = userCredential.user!.uid;
    final fcmToken = await FirebaseMessaging.instance.getToken();
    final userModel = UserModel(
      id: uId,
      name: registerModel.name,
      email: registerModel.email,
      password: registerModel.password,
      fcmToken: fcmToken,
    );
    await _usersCollection.doc(uId).set(userModel.toJson());
    return userModel;
  }

  Future<UserModel> login(LoginDataModel loginModel) async {
    final userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: loginModel.email,
      password: loginModel.password,
    );
    final uId = userCredential.user!.uid;
    final fcmToken = await FirebaseMessaging.instance.getToken();
    await _usersCollection.doc(uId).update({
      FirebasePath.fcmToken: fcmToken,
    });
    final docSnapShot = await _usersCollection.doc(uId).get();
    final userModel = UserModel.fromJson(docSnapShot.data()!);
    return userModel;
  }

  Future<void> logout() => FirebaseAuth.instance.signOut();

  Future<void> forgotPassword(String email) =>
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);

  User? getCurrentUser() => FirebaseAuth.instance.currentUser;
}
