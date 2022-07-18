import 'package:flutter/material.dart';

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
          children: [
            SideMenu(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderBar(),
                Padding(
                  padding: const EdgeInsets.only(left: 40,top: 15),
                  child: Row(

                    children: [
                      Container(
                        child: Text('All(2000)',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                      ),
                      Text('    |    ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                      Container(
                        child: Text('Processing(100)',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                      ),
                      Text('    |    ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                      Container(
                        child: Text('Completed(20)',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                      ),
                      Text('    |    ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                      Container(
                        child: Text('Rejected(2)',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}