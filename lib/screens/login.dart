import 'package:chat_app/components/base_ui.dart';
import 'package:chat_app/components/ui/input_action.dart';
import 'package:chat_app/screens/messages.dart';
import 'package:chat_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool obscure = true;
  final String _errorMessage = "";
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool _validateEmail(String email) {
    String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }

  void onSubmit() {
   
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MessagesScreen()),
      );
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.secondaryColor,
          toolbarHeight: 10,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: AppTheme.secondaryColor,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(children: [
                const SizedBox(
                    height: 150,
                    child:
                        Image(image: AssetImage("assets/images/branch2.png"))),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: UI.text(
                      "Fill in the form with your email and password to login",
                      textAlign: TextAlign.center,
                      fontStyle: FontStyle.italic),
                ),
                if (_errorMessage != "") ...[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: UI.text(_errorMessage,
                        textAlign: TextAlign.center, textColor: Colors.red),
                  )
                ],
                const SizedBox(
                  height: 10,
                ),
                UI.formInput(
                    hint: "Email address",
                    controller: usernameController,
                    validator: (value) {
                      if (!_validateEmail(value!)) {
                        return "Please enter a valid email address";
                      }
                      return null;
                    }),
                UI.formInput(
                    hint: "Password",
                    controller: passwordController,
                    isPassword: obscure,
                    inputAction: InputAction(
                        icon: obscure ? Icons.visibility : Icons.visibility_off,
                        callback: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        })),
                const SizedBox(height: 30),
                UI.button(
                    text: "Login",
                    onPressed: () {
                      onSubmit();
                    }),
                const SizedBox(
                  height: 10,
                ),
              ]),
            ),
          ),
        ));
  }
}
