import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 350,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: 165,
            width: 318,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img_1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
              children: [
                MenuItems()
              ],
          )
        ],
      ),
    );
  }
}

MenuItems() {
  return Container(
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColor.mainColor, borderRadius: BorderRadius.circular(10)
          ),
          height: 70,
          width: 209,
          child: Row(
            children: [
              Icon(Icons.home_filled),
              Text('Dashboard', style: TextStyle(),)
            ],
          ),
        )
      ],
    ),
  );
}