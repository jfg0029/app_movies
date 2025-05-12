import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_ow/auth/structure/controllers/auth_controller.dart';
import 'package:flutter_with_firebase_ow/auth/utils/validators_utils.dart';
import 'package:get/get.dart';

class CardRegisterForm extends StatelessWidget {
CardRegisterForm({ Key? key }) : super(key: key);

final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    FormValidator formValidator = FormValidator();
    AuthController authController = Get.find();
    return Form(
      key: _formKey,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: TextFormField(
                  validator: formValidator.isValidName,
                  decoration: const InputDecoration(
                    hintText: "Escribe tu nombre",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Flexible(
                child: TextFormField(
                  validator: formValidator.isValidEmail,
                  controller: authController.emailController,
                  decoration: const InputDecoration(
                    hintText: "Escribe tu email",
                  ),
                ),
              ),
              SizedBox(height: 10),
              Flexible(
                child: TextFormField(
                  obscureText: true,
                  validator: formValidator.isValidPass,
                  controller: authController.passwordController,
                  decoration: const InputDecoration(
                    hintText: "Escribe tu contraseña",
                  ),
                ),
              ),
              Expanded(child: SizedBox(height: 20)),
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    authController.registerWithEmailAndPssword();
                    print("Este formulario es válido");
                  } else {
                    print("Vuelve a intentarlo");
                  }
                },
                child: Text(
                  "REGISTRARME",
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}