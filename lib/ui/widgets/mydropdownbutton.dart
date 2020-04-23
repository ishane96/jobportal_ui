import 'package:flutter/material.dart';
class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({
    Key key,
  }) : super(key: key);

  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: Container(),
      onChanged: (f) => _active = f,
      value: _active,
      style: Theme.of(context).textTheme.headline,
      items: [
        DropdownMenuItem(child: Text("Software Engineering"), value: 0),
        DropdownMenuItem(child: Text("Networking"), value: 1),
        DropdownMenuItem(child: Text("Mobile Developing"), value: 2),
        DropdownMenuItem(child: Text("Web Developing"), value: 3),
        DropdownMenuItem(child: Text("Cyber Security"), value: 4),
      ],
    );
  }
}
