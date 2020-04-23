import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String email = "";
  String name = "";
  String mobile = "";
  String car = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: Text("My Profile"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            },
          ),
        ),
        body: FutureBuilder(builder: (context, snapshot) {
          return Column(
            children: <Widget>[
              Card(
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "User Information",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Divider(
                        color: Colors.black38,
                      ),
                      Container(
                          child: Column(
                        children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            leading: Icon(Icons.account_circle),
                            title: Text("Name"),
                            subtitle: Text("Achintha Kahawalage"),
                          ),
                          ListTile(
                            leading: Icon(Icons.email),
                            title: Text("Email"),
                            subtitle: Text("achintha@gmail.com"),
                          ),
                          ListTile(
                            leading: Icon(Icons.phone),
                            title: Text("Phone"),
                            subtitle: Text("0777123456"),
                          ),
                          ListTile(
                            leading: Icon(Icons.calendar_today),
                            title: Text("Date of Birth"),
                            subtitle: Text("04/12/1996"),
                          ),
                          ListTile(
                            leading: Icon(Icons.file_upload),
                            title: Text("Upload CV"),
                            subtitle: Text("04/12/1996"),
                          ),
                          const RaisedButton(
                            onPressed: null,
                            child: Text('Choose File',
                                style: TextStyle(fontSize: 20)),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              )
            ],
          );
        }));
  }
}
