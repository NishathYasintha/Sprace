import 'package:flutter/material.dart';

class HeaderBar extends StatefulWidget {
  const HeaderBar({Key? key}) : super(key: key);

  @override
  State<HeaderBar> createState() => _HeaderBarState();
}

class _HeaderBarState extends State<HeaderBar> {
  var items = [   
    'Admin',
    'Cleaner',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width - 350,
          // color: Color(0xffE5E5E5),
          child: Row(
            children: [
             Container(
              child:Text("Dashboard")
             ),
             Container(),
             Container(
              
             ),
            ],
          ),
        ),
      ],
    );
  }
}

