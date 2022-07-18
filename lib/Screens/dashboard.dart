import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';

import '../component/header.dart';
import '../component/sidemenu.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SideMenu(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HeaderBar(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Comp('Orders','wysiwyg',06),
                      Comp('Services','wysiwyg',12),
                      Comp('Cleaners','wysiwyg',24),

                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

Comp(var _title, var _icon, var _count) {
  return Padding(
    padding: const EdgeInsets.only(left:31.0, top:66.0,right:4.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow:[
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), //color of shadow
            spreadRadius: 7,
            blurRadius: 10,
            offset: Offset(1, 3),
          ),
        ],
      ),
      height: 181,
      width: 275,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 21.0, left: 30.0),
            child: Text(_title, style: TextStyle(fontSize: 20, color: Color(0xFF7D7D7D)),),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(_count.toString(),style: TextStyle(fontSize: 77,fontWeight: FontWeight.w700, color: AppColor.mainColor),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 82,top: 15),
                child: Icon(Icons.wysiwyg,size: 70,),
              )
            ],
          ),
        ],
      ),
    ),
  );
}



