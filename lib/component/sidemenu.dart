import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Side menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                  // color: Colors.green,
                  image: DecorationImage(
                      // fit: BoxFit.fill,
                      image: AssetImage('assets/img_1.png'))),
            ),
            ListTile(
              leading: Icon(Icons.input ),
              title: Text('Dashboard',
                  style: TextStyle(fontSize: 18, color: Color(0xff7D7D7D))),
              onTap: () => {},
              contentPadding: EdgeInsets.only(left: 59, top:36,bottom: 30),
              dense: true,
              tileColor: Colors.green,
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Orders',
                  style: TextStyle(fontSize: 18, color: Color(0xff7D7D7D))),
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 59, bottom: 30),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Cleaners',
                  style: TextStyle(fontSize: 18, color: Color(0xff7D7D7D))),
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 59, bottom: 30),
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Services',
                  style: TextStyle(fontSize: 18, color: Color(0xff7D7D7D))),
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 59, bottom: 30),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Profile',
                  style: TextStyle(fontSize: 18, color: Color(0xff7D7D7D))),
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 59, bottom: 30),
              
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Settings',
                  style: TextStyle(fontSize: 18, color: Color(0xff7D7D7D))),
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 59, bottom: 30),
            ),
          ],
        ),
      ),
    );
  }
}
