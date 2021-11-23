import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project83batch/homepage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phone_ct = TextEditingController();
  TextEditingController pass_ct = TextEditingController();
  var msg ="";
  usereLogin()async{
    String url = "https://api.ishaqi.com/customerlogin";
    Uri myuri = Uri.parse(url);
    var client = http.Client();
    Map logindetails = {
      "user_nam": phone_ct.text,
      "password": pass_ct.text,
    };
    var body = jsonEncode(logindetails);

    var responce = await client.post(myuri,body: body);


    print(responce.statusCode);
    if(responce.statusCode==200
    ){
      var data = jsonDecode(responce.body);
      msg = data["message"];
      if(data["status"]=="SUCCESS"){

        Navigator.push(context, MaterialPageRoute(builder: (builder)=> HomePage()));
      }
      setState(() {

      });
    }
    print(responce.body);

  }

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

            Text(msg),

            InkWell(
              onTap: (){
                usereLogin();
              },
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 60,

                width: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Loginn",style: TextStyle(fontSize: 24,color: Colors.white),)),
              ),
            )
          ],
        ));
  }
}