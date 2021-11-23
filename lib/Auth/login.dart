import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login v")),
      ),
      body: Container(
        color: Colors.orangeAccent,
        child: Column(
          children: [
            Text("username", style: TextStyle(color: Colors.black.withOpacity(0.8)),),
            TextField(),
            Text("Password", style: TextStyle(color: Colors.black.withOpacity(0.8)),),
            TextField(),

            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () { },
              child: Text('Login', style: TextStyle(color: Colors.black.withOpacity(0.8)),),
            )
          ],


        ),

      ),

    );
  }
}
