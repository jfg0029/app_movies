import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
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
            const SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Registrarse",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}