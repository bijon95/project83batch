import 'package:flutter/material.dart';

class Nwdrawer extends StatefulWidget {
  const Nwdrawer({Key? key}) : super(key: key);

  @override
  _NwdrawerState createState() => _NwdrawerState();
}

class _NwdrawerState extends State<Nwdrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Setting"),),
      drawer: Drawer(child: ListView(
        children: [
          Container(margin: EdgeInsets.all(20),
              child: Text('GMAIL',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)),
          ListTile(title: Text('All Inboxes'),
            leading: Icon(Icons.inbox),),
          ListTile(
            title:Text("Primary") ,
            trailing:Container(decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.greenAccent,
            ),
                child: Text('11 new')) ,
            leading: Icon(Icons.stay_primary_landscape),
          ),
          ListTile(
            title:Text("Social") ,
            trailing:Container(decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey,
            ),
                child: Text('14 new')) ,
            leading: Icon(Icons.people_alt),
          ),
          ListTile(
              title:Text("Promotion") ,
              trailing:Container(decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
              ),
                  child: Text('32 new')) ,
              leading:Icon(Icons.margin)
          ),
          Container(margin: EdgeInsets.all(20),
              child: Text('ALL LEBELS')),
          ListTile(
            title:Text("starred") ,
            leading:Icon(Icons.star_border) ,
          ),
          ListTile(
            title:Text("Snoozed") ,
            leading:Icon(Icons.schedule) ,
          ),
          ListTile(
            title:Text("Important") ,
            leading:Icon(Icons.label_important_outline) ,
            trailing: Text('70'),
          ),
          ListTile(
            title:Text("Sent") ,
            //trailing:Text('14 new') ,
            leading: Icon(Icons.send),

          ),
          ListTile(
            title:Text("Scheduled") ,
            //trailing:Text('14 new') ,
            leading: Icon(Icons.schedule_send),

          ),
          ListTile(
            title:Text("Outbox") ,
            leading: Icon(Icons.outbox),

          ),
          ListTile(
            title:Text("Drafts") ,
            leading: Icon(Icons.drafts),
          ),
          ListTile(
            title:Text("All mail") ,
            leading: Icon(Icons.mail_outline),
            trailing: Text('99+'),
          ),
          ListTile(
            title:Text("Spam") ,
            leading: Icon(Icons.spa),
            trailing: Text('30'),
          ),
          ListTile(
            title:Text("Bin") ,
            leading: Icon(Icons.delete),
          ),

        ],
      ),),
    );
  }
}
