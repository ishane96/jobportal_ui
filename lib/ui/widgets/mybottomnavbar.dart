import 'package:flutter/material.dart';
import 'package:flutter_job_portal/ui/widgets/profile.dart';
import 'mybottomnavitem.dart';
class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MyBottomNavItem(
            text: "Jobs",
            icon: Icons.work,
            id: 0,
            onPressed: () {
              setState(() {
                _active = 0;
              });
            },
            active: _active,
          ),
          MyBottomNavItem(
            text: "Profile",
            icon: Icons.person,
            id: 3,
            onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          ),
            active: _active,
          ),
        ],
      ),
    );
  }
}
