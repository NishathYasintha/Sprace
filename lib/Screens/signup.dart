import 'package:flutter/material.dart';

import '../component/colors.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img.png"),
                fit: BoxFit.cover,
              ),
            ),
        ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left:0.0, top:10.0,right:0.0,bottom:10.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 725 .0,
                  width: 458.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left:30.0, top:0.0,right:34.0,bottom:10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.0, right: 34.0),
                          child: Container(
                            width: 300,
                            height: 135,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img_1.png"),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:90.0, top:120.0,right:0.0,bottom:0.0),
                              child: Text("Signup with your email",style: TextStyle(color: AppColor.textDark ,fontSize: 14,fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),
                        
                        Text("NAME",style: TextStyle(color: AppColor.textDark, fontSize: 12,fontWeight: FontWeight.w700),),
                        SizedBox(height: 6,),
                        Container(
                          height: 38,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'Name',
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.only(left:10.0, top:5.0),
                                hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4B506D).withOpacity(0.4)),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("ADDRESS",style: TextStyle(color: AppColor.textDark, fontSize: 12,fontWeight: FontWeight.w700),),
                            
                          ],
                        ),
                        SizedBox(height: 6,),
                
                        Container(
                          height: 38.0,
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:10.0, top:5.0),
                              filled: true,
                              hintText: 'Address',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4B506D).withOpacity(0.4)),
                            ),
                            obscureText: _obscureText,

                          ),
                        ),
                
                        SizedBox(height: 15,),

                        Row(
                          mainAxisSize: MainAxisSize.max,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("DATE OF BIRTH",style: TextStyle(color: AppColor.textDark, fontSize: 12,fontWeight: FontWeight.w700),),
                            
                          ],
                        ),
                        SizedBox(height: 6,),
                
                        Container(
                          height: 38.0,
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:10.0, top:5.0),
                              filled: true,
                              hintText: 'MM/DD/YYYY',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4B506D).withOpacity(0.4)),
                            ),
                            obscureText: _obscureText,

                          ),
                        ),
                
                        SizedBox(height: 15,),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("EMAIL",style: TextStyle(color: AppColor.textDark, fontSize: 12,fontWeight: FontWeight.w700),),
                            
                          ],
                        ),
                        SizedBox(height: 6,),
                
                        Container(
                          height: 38.0,
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:10.0, top:5.0),
                              filled: true,
                              hintText: 'Email',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4B506D).withOpacity(0.4)),
                            ),
                            obscureText: _obscureText,

                          ),
                        ),

                        SizedBox(height: 15,),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("MOBILE NUMBER",style: TextStyle(color: AppColor.textDark, fontSize: 12,fontWeight: FontWeight.w700),),
                            
                          ],
                        ),
                        SizedBox(height: 6,),
                
                        Container(
                          height: 38.0,
                          width: 394.0,
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:10.0, top:5.0),
                              filled: true,
                              hintText: 'Mobile Number',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4B506D).withOpacity(0.4)),
                            ),
                            obscureText: _obscureText,

                          ),
                        ),

                        SizedBox(height: 15,),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("PAYMENT METHOD",style: TextStyle(color: AppColor.textDark, fontSize: 12,fontWeight: FontWeight.w700),),
                            
                          ],
                        ),
                        SizedBox(height: 6,),
                
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 38.0,
                                  width: 295.0,
                                  child: TextField(
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left:10.0, top:5.0),
                                      filled: true,
                                      hintText: 'Card Number',
                                      border: OutlineInputBorder(),
                                      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4B506D).withOpacity(0.4)),
                                    ),
                                    obscureText: _obscureText,

                                  ),
                                ),
                                
                                Padding(
                                  padding: EdgeInsets.only(left:11.0),
                                  child: Container(
                                    height: 38.0,
                                    width: 88.0,
                                    child: TextField(
                                      keyboardType: TextInputType.visiblePassword,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left:10.0, top:5.0),
                                        filled: true,
                                        hintText: 'MM/YY',
                                        border: OutlineInputBorder(),
                                        hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4B506D).withOpacity(0.4)),
                                      ),
                                      obscureText: _obscureText,

                                    ),
                                  ),
                                ),

                              ],
                             
                            ),
                         SizedBox(height: 15,),
                            Row(
                              children: [
                                Container(
                                  height: 38.0,
                                  width: 84.0,
                                  child: TextField(
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left:7.0, top:5.0),
                                      filled: true,
                                      hintText: 'CVV/CVC',
                                      border: OutlineInputBorder(),
                                      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4B506D).withOpacity(0.4)),
                                    ),
                                    obscureText: _obscureText,

                                  ),
                                ),
                                
                                Padding(
                                  padding: EdgeInsets.only(left:10.0),
                                  child: Container(
                                    height: 38.0,
                                    width: 300.0,
                                    child: TextField(
                                      keyboardType: TextInputType.visiblePassword,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left:10.0, top:5.0),
                                        filled: true,
                                        hintText: 'Card holder Name',
                                        border: OutlineInputBorder(),
                                        hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4B506D).withOpacity(0.4)),
                                      ),
                                      obscureText: _obscureText,

                                    ),
                                  ),
                                ),

                              ],
                             
                            ),
                         
                         
                         
                          ],
                        ),
                        SizedBox(height: 15,),
                        Center(
                          
                          child: GestureDetector(
                            onTap: () { },
                            
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColor.mainColor,),
                              
                              height: 48,
                              width: 385,
                              // color: AppColor.mainColor,
                              child: Center(child: Text('Create account',style: TextStyle(color: Colors.white, fontSize: 14,),)),
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Center(
                            child:Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?",style: TextStyle(color: Color(0xFF9FA2B4) , fontSize: 14,fontWeight: FontWeight.w400,),),
                            Text("Log In",style: TextStyle(color: AppColor.mainColor , fontSize: 14,fontWeight: FontWeight.w400,),)
                          ],
                        )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

