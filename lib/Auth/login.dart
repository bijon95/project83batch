import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phone_ct = TextEditingController();
  TextEditingController pass_ct = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter your Mobile no and password"),
            TextField(
              controller: phone_ct,

            ),
            TextField(
              controller: pass_ct,

            ),

            Container(
              margin: EdgeInsets.only(top: 30),
              height: 60,

              width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
              child: Center(child: Text("Login",style: TextStyle(fontSize: 24,color: Colors.white),)),
            )
          ],
        ));
  }
}
