import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';

import '../component/header.dart';
import '../component/sidemenu.dart';

class CleanPage extends StatefulWidget {
  const CleanPage({Key? key}) : super(key: key);

  @override
  State<CleanPage> createState() => _CleanPageState();
}

class _CleanPageState extends State<CleanPage> {
  @override
  Widget build(BuildContext context) {
    Future<void> openDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      child: Text(
                        "Add Cleaner",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name"),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Name',
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.only(left: 10.0, top: 5.0),
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF4B506D).withOpacity(0.4)),
                            ),
                          ),
                          Text("Email"),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Name',
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.only(left: 10.0, top: 5.0),
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF4B506D).withOpacity(0.4)),
                            ),
                          ),
                          Text("Address"),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Name',
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.only(left: 10.0, top: 5.0),
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF4B506D).withOpacity(0.4)),
                            ),
                          ),
                          Text("Phone Number"),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Name',
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.only(left: 10.0, top: 5.0),
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF4B506D).withOpacity(0.4)),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColor.mainColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SideMenu(
              value: 'orders',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderBar(
                  value: 'Orders',
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 30, right: 22),
                      child: GestureDetector(
                        onTap: openDialog,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.mainColor,
                          ),
                          // ignore: sort_child_properties_last
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle,
                                size: 25,
                                color: Colors.white,
                              ),
                              Text(
                                '  Add Service',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              //test
                            ],
                          ),
                          height: 50,
                          width: 200,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 0, top: 30, right: 22),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF94F4F),
                        ),
                        height: 50,
                        width: 200,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.delete_forever,
                              size: 25,
                              color: Colors.white,
                            ),
                            Text(
                              '  Remove All',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //*******************
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 22),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2), //color of shadow
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0.5, 1),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width - 350,
                    height: MediaQuery.of(context).size.height - 220,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 7, right: 7, bottom: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 30),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: buildCheckBox(),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        child: Text(
                                          'Name',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 200.0,
                                      ),
                                      Container(
                                        child: Text(
                                          'Email',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 200.0,
                                      ),
                                      Container(
                                        child: Text(
                                          'Address',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 200.0,
                                      ),
                                      Container(
                                        child: Text(
                                          'Phone Number',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CleanerDerails('name2', 'name2@gmail.com',
                                    'A street, Tokyo', '+953465367'),
                                CleanerDerails('name1', 'name2@gmail.com',
                                    'A street, Tokyo', '+954567856'),
                                CleanerDerails('name3', 'name2@gmail.com',
                                    'A street, Tokyo', '+954556345'),
                                CleanerDerails('name1', 'name2@gmail.com',
                                    'A street, Tokyo', '+954534234'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                //****************
              ],
            )
          ],
        ),
      ),
    );
  }
}

//this function call in for each function

CleanerDerails(var _name, var _email, var _address, var _phone) {
  double _x = 270.0;

  return Container(
    height: 50,
    width: 1080,

    // color: Colors.red,
    child: Row(
      children: [
        Container(
          child: buildCheckBox(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            width: 120,
            child: Text(
              _name,
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
        SizedBox(
          width: _x - 150,
        ),
        Container(
          width: 180,
          child: Text(
            _email,
            style: TextStyle(fontSize: 17),
          ),
        ),
        SizedBox(
          width: _x - 210,
        ),

        Container(
          width: 120,
          child: Text(
            _address,
            style: TextStyle(fontSize: 17),
          ),
        ),
        SizedBox(
          width: _x - 120,
        ),
        Container(
          width: 100,
          child: Text(
            _phone,
            style: TextStyle(fontSize: 17),
          ),
        ),
        SizedBox(
          width: _x - 200,
        ),
        //can change this as gesture detector
        Container(
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                child: Icon(Icons.edit),
              ),
            ),
            Container(
              child: Icon(
                Icons.delete_forever,
                color: Colors.red,
              ),
            ),
          ]),
        ),
      ],
    ),
  );
}

Widget buildCheckBox() => Checkbox(value: false, onChanged: onChanged);
void onChanged(bool? value) {}
