import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_ow/auth/widgets/card_register_form.dart';
import 'package:flutter_with_firebase_ow/routes/app_routes.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      ),
      backgroundColor: Colors.orange,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 40,
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text("BIENVENIDO", style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold, 
              fontSize: 20),),
              SizedBox(height: 30),
              Expanded(
                child: CardRegisterForm()
              ),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () {
                Get.offAllNamed(Routes.LOGIN);
              },
              child: const Text(
                "Ir a Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}