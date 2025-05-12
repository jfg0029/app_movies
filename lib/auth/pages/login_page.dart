import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_ow/auth/widgets/card_login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},),
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
            Text("HOLA DE NUEVO", style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold,
              fontSize: 20,
              ),
              ),
              SizedBox(height: 30),
              Expanded(child: CardLoginForm(),),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Iniciar Sesión",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
