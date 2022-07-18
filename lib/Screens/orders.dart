import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';

import '../component/header.dart';
import '../component/sidemenu.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                Padding(
                  padding: const EdgeInsets.only(left: 40,top: 15),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Container(
                          child: Text('All(2000)',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                        ),
                        Text('    |    ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                        Container(
                          child: Text('Processing(100)',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                        ),
                        Text('    |    ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                        Container(
                          child: Text('Completed(20)',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                        ),
                        Text('    |    ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                        Container(
                          child: Text('Rejected(2)',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),
                  ),
                ),
                //*******************
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 22),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(10),
                      boxShadow:[
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
                        child: Padding(
                          padding: const EdgeInsets.only(top:10 ,left:7 , right:7 ,bottom:10 ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,top: 30),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text('Order',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                                      ),
                                      SizedBox(width: 270.0,),
                                      Container(
                                        child: Text('Date',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),

                                      ),
                                      SizedBox(width: 270.0,),
                                      Container(
                                        child: Text('Status',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),

                                      ),
                                      SizedBox(width: 270.0,),
                                      Container(
                                        child: Text('Price'.toString(),style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                OrderDerails('Order1','Aug 4,2021', 'completed', 3000),
                                OrderDerails('Order2','Aug 4,2021', 'processing', 3000),
                                OrderDerails('Order1','Aug 4,2021', 'completed', 3000),
                                OrderDerails('Order3','Aug 4,2021', 'rejected', 3000),



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

OrderDerails (var _order, var _date, var _status, var _price) {
  double _x=270.0;
  var _c;

  if(_status=='completed'){
     _c = AppColor.compColor;
  }
  else if(_status=='processing'){
     _c = AppColor.processColor;
  }
  else if(_status=='rejected'){
     _c = AppColor.rejectColor;
  }


  return Container(
    height: 50,
      width: 1080,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12)
      ),
      // color: Colors.red,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              width: 120,
                  child: Text(_order,style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
            ),
          ),
          SizedBox(width: _x-100,),
          Container(
            width: 120,
                child: Text(_date,style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),

          ),
          SizedBox(width: _x-90,),
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: _c,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text(_status,style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),)),

          ),
          SizedBox(width: _x-30,),
          Container(
            width: 100,
                child: Text(_price.toString(),style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
          ),
        ],
      ),
    );

}