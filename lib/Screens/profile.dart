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
              SideMenu(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HeaderBar(),
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
  return Container(
    child: Column(children: [
      //title
      Column(
        children: [
          Text("Account Information"),
          Text("Update Your Account Information"),
        ],
      ),

      //personal information
      Container(
          child: Column(
        children: [
          //title
          Container(
            child: Text("Personal Information"),
          ),
          //information
          Container(
            // width: 1000.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      Text("Name"),
                      Container(
                        height: 40,
                        width: 200,
                        child: TextField(
                           keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'Email Address',
                              border: new OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                        ),
                      ),
                      Text("Address"),
                      // ignore: prefer_const_constructors
                      Container(
                        width: 200.0,
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'Email Address',
                              border: new OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                        ),
                      ),
                      Text("New Password"),
                      Container(
                        width: 200,
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(),
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
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Column(
                  children: [
                    Text("Name"),
                    Container(
                      height: 40,
                      width: 200,
                      child: TextField(
                         keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'Email Address',
                            border: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                    ),
                    Text("Address"),
                    // ignore: prefer_const_constructors
                    Container(
                      width: 200.0,
                      height: 40,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'Email Address',
                            border: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                    ),
                    Text("New Password"),
                    Container(
                      width: 200,
                      height: 40,
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(),
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
                  children: [
                    Text("Date of Birth"),
                    Container(
                      width: 200,
                      height: 40,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'Email Address',
                            border: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
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
        children: [
          //title
          Container(
            child: Text('Credit/Debit Card Information'),
          ),
          //information
          Container(
            child: Row(children: [
              Column(
                children: [
                  Text("Card Number"),
                  Container(
                    width: 200,
                    height: 40,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Email Address',
                          border: new OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                  Text("Card Holder Name"),
                  Container(
                    width: 200,
                    height: 40,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Email Address',
                          border: new OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Expity Date"),
                  Container(
                    width: 200,
                    height: 40,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Email Address',
                          border: new OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                  Text("CVV/CVC"),
                  Container(
                    width: 200,
                    height: 40,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Email Address',
                          border: new OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      )),
      //button
      Container(
        width: 500,
        height: 40,
        decoration: BoxDecoration(
          color: AppColor.mainColor,
        ),
        child: Center(child: Text("Update")),
      ),
    ]),
  );
}
