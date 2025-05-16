import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_ow/auth/services/auth_firebase_repository.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rxn<User?> firebaseUser = Rxn<User?>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

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
}
