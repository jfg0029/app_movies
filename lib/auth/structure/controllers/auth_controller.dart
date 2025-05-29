import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_ow/auth/services/auth_firebase_repository.dart';
import 'package:flutter_with_firebase_ow/routes/app_routes.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rxn<User?> firebaseUser = Rxn<User?>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get user => _auth.authStateChanges();

  @override
  void onReady() {
    ever(firebaseUser, handleAuthChange);
    firebaseUser.bindStream(user);
    super.onReady();
  }

  handleAuthChange(User? firebaseUser) async {
    if (firebaseUser?.isAnonymous == false && firebaseUser?.uid != null) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  registerWithEmailAndPssword() async {
    firebaseUser.value = await AuthFirebaseRepository()
        .registerWithEmailAndPssword(
          email: emailController.value.text,
          password: passwordController.value.text,
        );
  }

  loginWithEmailAndPssword() async {
    firebaseUser.value = await AuthFirebaseRepository()
        .loginWithEmailAndPssword(
          email: emailController.value.text,
          password: passwordController.value.text,
        );
  }

  loginWithGoogle() async {
    firebaseUser.value = await AuthFirebaseRepository().signInWithGoogle();
  }

  Future<void> signOut() async{
    _auth.signOut();
  }
}
