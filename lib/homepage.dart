import 'package:flutter/material.dart';

import 'Auth/newdrower.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
        actions: [

          InkWell(
          onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (builder)=>Nwdrawer()));
    },
      child:
          Icon(Icons.settings),)]

      ),
      body: Container(
      ),

    );
  }
}
