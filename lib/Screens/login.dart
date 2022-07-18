import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText= true;
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
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              height: 530.0,
              width: 360.0,
              child: Padding(
                padding: const EdgeInsets.only(left:30.0, top:10.0,right:32.0,bottom:20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 318,
                      height: 144,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_1.png"),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:30.0, top:120.0,right:0.0,bottom:0.0),
                        child: Text("Enter your email and password below",style: TextStyle(color: AppColor.textDark ,fontSize: 14,fontWeight: FontWeight.w400),),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("EMAIL",style: TextStyle(color: AppColor.textDark, fontSize: 14,fontWeight: FontWeight.w700),),
                    SizedBox(height: 8,),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Email Address',
                          border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 24,),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("PASSWORD",style: TextStyle(color: AppColor.textDark, fontSize: 14,fontWeight: FontWeight.w700),),
                        SizedBox(width: 150,),
                        Text("Fogot Password",style: TextStyle(fontSize: 10),),
                      ],
                    ),
                    SizedBox(height: 8,),

                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: _obscureText
                              ?Icon(Icons.visibility_off, color: AppColor.textDark,)
                              :Icon(Icons.visibility , color: AppColor.textDark,),
                          onPressed: (){setState(() =>_obscureText = !_obscureText);},
                        )
                      ),
                      obscureText: _obscureText,
                    ),

                    SizedBox(height: 24,),

                    Container(

                      height: 48,
                      width: 316,
                      color: AppColor.mainColor,
                      child: Center(child: Text('Log In',style: TextStyle(color: Colors.white, fontSize: 14,),)),
                    ),
                    SizedBox(height: 32,),
                    Center(
                        child:Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have an account?",style: TextStyle(color: Color(0xFF9FA2B4) , fontSize: 14,fontWeight: FontWeight.w400,),),
                        Text("Sign Up",style: TextStyle(color: AppColor.mainColor , fontSize: 14,fontWeight: FontWeight.w400,),)
                      ],
                    )
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

