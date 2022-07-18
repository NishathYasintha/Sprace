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
  List cleaners = [
    ['name1', 'name1@gmail.com', 'A street, Tokyo', '+957867543'],
    ['name2', 'name2@gmail.com', 'B street, Tokyo', '+957867543'],
    ['name3', 'name3@gmail.com', 'C street, Tokyo', '+957867543'],
    ['name4', 'name4@gmail.com', 'D street, Tokyo', '+957867543'],
  ];
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
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, top: 50, right: 22),
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
                                '  Add Cleaners',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                          height: 50,
                          width: 200,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 0, top: 50, right: 22),
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
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 7, right: 7, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Table(
                                  // defaultColumnWidth: FixedColumnWidth(150.0),
                                  // border: TableBorder.all(
                                  //     color: Colors.black,
                                  //     style: BorderStyle.solid,
                                  //     width: 2),
                                  children: [
                                    TableRow(
                                      children: [
                                        Column(
                                          children: [Text("Name")],
                                        ),
                                        Column(
                                          children: [Text("Email")],
                                        ),
                                        Column(
                                          children: [Text("Address")],
                                        ),
                                        Column(
                                          children: [Text("Phone No")],
                                        ),
                                        Column(
                                          children: [],
                                        ),
                                        Column(
                                          children: [],
                                        )
                                      ],
                                    ),

                                    // cleaners.forEach((element)=> {
                                    //   TableRow(children: [
                                    //     Column(children: [Text(element[0])],),
                                    //     Column(children: [Text(element[1])],),
                                    //     Column(children: [Text(element[2])],),
                                    //     Column(children: [Text(element[3])],)
                                    //   ]),
                                    // }) ,

                                    //hard coded
                                    TableRow(children: [
                                      Column(
                                        children: [Text("name1")],
                                      ),
                                      Column(
                                        children: [Text("name1@gmail.com")],
                                      ),
                                      Column(
                                        children: [Text("A street, Tokyo")],
                                      ),
                                      Column(
                                        children: [Text("+956457345")],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/pencil.png"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            width: 50.0,
                                            height: 50.0,
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [Text("+956457345")],
                                      ),
                                    ]),

                                    TableRow(children: [
                                      Column(
                                        children: [Text("name1")],
                                      ),
                                      Column(
                                        children: [Text("name1@gmail.com")],
                                      ),
                                      Column(
                                        children: [Text("A street, Tokyo")],
                                      ),
                                      Column(
                                        children: [Text("+956457345")],
                                      ),
                                      Column(
                                        children: [Text("+956457345")],
                                      ),
                                      Column(
                                        children: [Text("+956457345")],
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Column(
                                        children: [Text("name1")],
                                      ),
                                      Column(
                                        children: [Text("name1@gmail.com")],
                                      ),
                                      Column(
                                        children: [Text("A street, Tokyo")],
                                      ),
                                      Column(
                                        children: [Text("+956457345")],
                                      ),
                                      Column(
                                        children: [Text("+956457345")],
                                      ),
                                      Column(
                                        children: [Text("+956457345")],
                                      ),
                                    ]),
                                  ],
                                )
                                // Row(
                                //   children: [
                                //     Container(
                                //       child: buildCheckBox(),
                                //     ),
                                //     Container(
                                //       child: Text("Name"),
                                //     ),
                                //     Container(
                                //       child: Text("Email"),
                                //     ),
                                //     Container(
                                //       child: Text("Address"),
                                //     ),
                                //     Container(
                                //       child: Text("Phone no"),
                                //     ),
                                //   ],
                                // ),
                                // CleanerDetails('name1', 'name1@gmail.com',
                                //     'A street, Tokyo', '+956756345')
                              ],
                            ),
                          ],
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

CleanerDetails(var _name, var _email, var _address, var _phoneNo) {
  return Container(
    child: Container(
      //header of the table
      child: Row(
        children: [
          buildCheckBox(),
          Text(_name),
          Text(_email),
          Text(_address),
          Text(_phoneNo),
        ],
      ),
    ),
  );
}

Widget buildCheckBox() => Checkbox(value: false, onChanged: onChanged);
void onChanged(bool? value) {}
