// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../component/colors.dart';
import '../component/header.dart';
import '../component/sidemenu.dart';

class InOrderPage extends StatefulWidget {
  const InOrderPage({Key? key}) : super(key: key);

  @override
  State<InOrderPage> createState() => _InOrderPageState();
}

class _InOrderPageState extends State<InOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SideMenu(value: 'Orders',),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderBar(value: 'Orders',),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'All(2000)',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Text(
                          '    |    ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          child: Text(
                            'Processing(100)',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Text(
                          '    |    ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          child: Text(
                            'Completed(20)',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Text(
                          '    |    ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          child: Text(
                            'Rejected(2)',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                    height: MediaQuery.of(context).size.height - 170,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        //body content
                        child: Container(
                          //there are 4 column in body
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //title
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top:20,left: 500.0, bottom: 50),
                                  child: Text(
                                    "Information of Order",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              //information
                              Container(
                                child: Row(children: [
                                  //labels
                                  Container(
                                    //labels column bby column
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 100.0, left: 40),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 4.0),
                                              child: Text(
                                                "Date :",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 4.0),
                                              child: Text(
                                                "Location :",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 4.0),
                                              child: Text(
                                                "Cleaning Type :",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 4.0),
                                              child: Text(
                                                "Number of Cleaners :",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Text(
                                              "Number of Bedrooms :",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  //details
                                  Container(
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 4.0),
                                            child: Text("05/12/2022"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 4.0),
                                            child: Text("Google Map"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 4.0),
                                            child: Text("House Cleaning"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 4.0),
                                            child: Text("4"),
                                          ),
                                          Text("2"),
                                        ]),
                                  ),
                                ]),
                              ),
                              //prices
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //labels
                                      Container(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, bottom: 20),
                                                child: Text(
                                                  "Set Price :",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Text(
                                                "Cleaner :",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ]),
                                      ),
                                      //prices
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 180.0),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                //square1
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 10.0),
                                                  child: Container(
                                                    width: 200,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: TextField(
                                                      controller: myController,
                                                      keyboardType:
                                                          TextInputType
                                                              .visiblePassword,
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 10.0,
                                                                top: 5.0),
                                                        filled: true,
                                                        
                                                        border:
                                                            OutlineInputBorder(),
                                                        
                                                      ),
                                                      style: TextStyle(color: Colors.red),
                                                    ),
                                                  ),
                                                ),
                                                //square2
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 10.0),
                                                  child: Container(
                                                    width: 200,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: TextField(
                                                      keyboardType:
                                                          TextInputType
                                                              .visiblePassword,
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 10.0,
                                                                top: 5.0),
                                                        filled: true,
                                                        
                                                        border:
                                                            OutlineInputBorder(),
                                                        
                                                      ),
                                                      
                                                    ),
                                                  ),
                                                ),
                                                //square3
                                                Container(
                                                  width: 450,
                                                  height: 150,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffF9f9F9),
                                                    border: Border.all(),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //buttons
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, top: 50),
                                  child: Row(children: [
                                    //accept button
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                        width: 150,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(child: Text("Accept", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                                      ),
                                    ),
                                    //reject button
                                    Container(
                                      width: 150,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(child: Text("Reject", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                                    ),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ), //****************
              ],
            )
          ],
        ),
      ),
    );
  }
}

TextEditingController myController = TextEditingController()..text = 'Rs.3000.00';