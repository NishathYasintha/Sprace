import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

import '../component/colors.dart';
import '../component/header.dart';
import '../component/sidemenu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SideMenu(value: 'profile',),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   HeaderBar(value: 'Profile',),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    // children: [
                    //   Comp('Orders','wysiwyg',06),
                    //   Comp('Services','wysiwyg',12),
                    //   Comp('Cleaners','wysiwyg',24),

                    // ],
                    children: [
                      UserDetails(),
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

UserDetails() {
  bool _obscureText = true;
  return Padding(
    padding: const EdgeInsets.only(left: 40.0),
    child: Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 500.0, bottom: 7),
                  child: const Text(
                    "Account Information",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 500.0, bottom: 30),
                  child: Text("Update Your Account Information"),
                ),
              ],
            ),

            //personal information
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: const Text(
                      "Personal Information",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //information
                Container(
                  // width: 1000.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Name"),
                              Container(
                                height: 40,
                                width: 300,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Name',
                                      border: new OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: const Text("Address"),
                              ),
                              // ignore: prefer_const_constructors
                              Padding(
                                padding: const EdgeInsets.only(bottom:10.0),
                                child: Container(
                                  width: 300.0,
                                  height: 40,
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'Address',
                                        border: new OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                              ),
                              const Text("New Password"),
                              Container(
                                width: 300,
                                height: 40,
                                child: TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'New Password',
                                    border: const OutlineInputBorder(),
                                    // suffixIcon: IconButton(
                                    //   icon: _obscureText
                                    //       ?Icon(Icons.visibility_off, color: AppColor.textDark,)
                                    //       :Icon(Icons.visibility , color: AppColor.textDark,),
                                    //   onPressed: (){setState(() =>_obscureText = !_obscureText);},
                                    // ),
                                  ),
                                  obscureText: _obscureText,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Email"),
                              Container(
                                height: 40,
                                width: 300,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Email',
                                      border: new OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: const Text("Mobile Number"),
                              ),
                              // ignore: prefer_const_constructors
                              Padding(
                                padding: const EdgeInsets.only(bottom:10.0),
                                child: Container(
                                  width: 300.0,
                                  height: 40,
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'Mobile Number',
                                        border: new OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                              ),
                              const Text("Confirm Password"),
                              Container(
                                width: 300,
                                height: 40,
                                child: TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Confirm Password',
                                    border: const OutlineInputBorder(),
                                    // suffixIcon: IconButton(
                                    //   icon: _obscureText
                                    //       ?Icon(Icons.visibility_off, color: AppColor.textDark,)
                                    //       :Icon(Icons.visibility , color: AppColor.textDark,),
                                    //   onPressed: (){setState(() =>_obscureText = !_obscureText);},
                                    // ),
                                  ),
                                  obscureText: _obscureText,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Date of Birth"),
                              Container(
                                width: 300,
                                height: 40,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Email Address',
                                      border: new OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ],
            )),
            //payment method
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0, bottom:20),
                    child: const Text('Credit/Debit Card Information', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                ),
                //information
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Card Number"),
                              Container(
                                height: 40,
                                width: 300,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Card Number',
                                      border: new OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: const Text("Card Holder Name"),
                              ),
                              // ignore: prefer_const_constructors
                              Container(
                                width: 300.0,
                                height: 40,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Card Holder Name',
                                      border: new OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Expiry Date"),
                              Container(
                                height: 40,
                                width: 300,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Expiry Date',
                                      border: new OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: const Text("CVV/CVC"),
                              ),
                              // ignore: prefer_const_constructors
                              Container(
                                width: 300.0,
                                height: 40,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'CVV/CVC',
                                      border: new OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white))),
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                      ]),
                ),
              ],
            )),
            //button
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  //can use as gesture detector
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: const Text("Update", style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ],
            ),
          ]),
    ),
  );
}
