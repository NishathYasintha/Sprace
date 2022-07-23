import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';

// import '../component/header.dart';
import '../component/sidemenu.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Comp('Orders','assets/img_5.png',10),
                  Comp('Services','assets/img_6.png',12),
                  Comp('Cleaners','assets/img_7.png',24),

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
    padding: const EdgeInsets.only(left:31.0, top:40.0,right:4.0),
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
      height: 160,
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22.0, left: 30.0),
            child: Text(_title, style: TextStyle(fontSize: 18, color: Color(0xFF7D7D7D)),),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 15),
                child: Text(_count.toString(),style: TextStyle(fontSize: 65,fontWeight: FontWeight.w700, color: AppColor.mainColor),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70,top: 15),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(

                    image: DecorationImage(
                      image: AssetImage(_icon),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}



