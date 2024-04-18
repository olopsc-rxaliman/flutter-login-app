import 'package:flutter/material.dart';
import 'package:loginapp/components/button.dart';
import 'package:loginapp/components/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List credentials = [
    {'username':'Rovic', 'password':'1234'},
    {'username':'John Doe', 'password':'password123'},
    {'username':'Juan Dela Cruz', 'password':'04202004'},
  ];

  void authenticate() {
    String username = usernameController.text;
    String password = passwordController.text;

    for (final user in credentials) {
      if (user['username'] != username)
        continue;
      else if (user['password'] == password)
        print("ACCESS GRANTED: Welcome '${user['username']}'");
      else
        print("ACCESS DENIED: Incorrect password...");
      return;
    }
    print("ERROR: Username not found...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              textFieldLabel: Text('Username'),
              controller: usernameController,
            ),
            SizedBox(
              height: 16,
            ),
            MyTextField(
              textFieldLabel: Text('Password'),
              controller: passwordController,
              isPassword: true,
            ),
            SizedBox(
              height: 16,
            ),
            MyButton(
              buttonLabel: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              buttonColor: Colors.blue,
              buttonBorderRadius: 10,
              buttonPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),

              onTapFunction: authenticate,
            ),
          ],
        ),
      ),
    );
  }
}