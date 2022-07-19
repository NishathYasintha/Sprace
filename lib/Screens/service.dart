import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';

import '../component/header.dart';
import '../component/sidemenu.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    Future<void> openDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
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
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: TextField(
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
                                      color:
                                          Color(0xFF4B506D).withOpacity(0.4)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("Email"),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Email',
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.only(left: 10.0, top: 5.0),
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xFF4B506D).withOpacity(0.4)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("Address"),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Address',
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.only(left: 10.0, top: 5.0),
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xFF4B506D).withOpacity(0.4)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("Phone Number"),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Phone Number',
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.only(left: 10.0, top: 5.0),
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xFF4B506D).withOpacity(0.4)),
                                ),
                              ),
                            ),
                            Text("Upload Image"),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 100,
                              width: 20,
                              decoration: BoxDecoration(),
                              child: Container(
                                  child: Column(
                                children: [
                                  //image
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/img_7.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  //text
                                  Container(),
                                ],
                              )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 63,
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
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SideMenu(
                value: 'services',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HeaderBar(
                    value: 'Services',
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, top: 30, right: 22),
                        child: GestureDetector(
                          onTap: () {},
                          child: GestureDetector(
                            onTap: openDialog,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColor.mainColor,
                              ),
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
                                  )
                                ],
                              ),
                              height: 50,
                              width: 200,
                            ),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                          height: 50,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 22),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.2), //color of shadow
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
                                top: 10, left: 20, right: 7, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Container(
                                //   child: GridView(
                                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 50, crossAxisSpacing: 100),
                                //     scrollDirection: Axis.vertical,
                                //     shrinkWrap: true,
                                //     children: [
                                //       Cleaner('Women', 'Washroom cleaning', 50000),
                                //       Cleaner('Women', 'Washroom cleaning', 50000),
                                //       Cleaner('Women', 'Washroom cleaning', 50000),
                                //       Cleaner('Women', 'Washroom cleaning', 50000),
                                //     ],
                                //   ),
                                // ),
                                //***************************
                                Row(
                                  children: [
                                    Cleaner(
                                        'Women', 'Washroom cleaning', 50000),
                                    Cleaner(
                                        'Women', 'Washroom cleaning', 50000),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Cleaner(
                                        'Women', 'Washroom cleaning', 50000),
                                    Cleaner(
                                        'Women', 'Washroom cleaning', 50000),
                                  ],
                                ),
                                //  *****************************
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Cleaner(var _gender, var _type, var _price) {
  return Padding(
    padding: const EdgeInsets.only(left: 80.0, top: 30),
    child: Container(
      width: 440,
      height: 240,
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
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(60)),
                height: 190,
                width: 165,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 170,
                      width: 145,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              )
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    _gender,
                    style: TextStyle(fontSize: 23, color: Color(0xFF000000)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                    child: Text(
                  'Cleaner',
                  style: TextStyle(fontSize: 40, color: Color(0xFF000000)),
                )),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    _type,
                    style: TextStyle(fontSize: 15, color: Color(0xFF000000)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Rs\.' + _price.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 35,
                        color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0.5, 3),
                          ),
                        ],
                      ),
                      child: Icon(Icons.edit),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0.5, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.delete_forever,
                        color: AppColor.rejectColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
