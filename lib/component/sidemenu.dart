import 'package:flutter/material.dart';
import 'package:sprace/Screens/orders.dart';
import 'package:sprace/Screens/profile.dart';
import 'package:sprace/Screens/service.dart';
import 'package:sprace/component/colors.dart';

import '../Screens/cleaners.dart';
import '../Screens/dashboard.dart';

class SideMenu extends StatefulWidget {
  String value ='';
  SideMenu({required this.value});
  // const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState(value);
}

class _SideMenuState extends State<SideMenu> {
  String value='';

  _SideMenuState(this.value);

  @override
  var _dashFont , _dashCov, _orderFont , _orderCov, _cleanerFont , _cleanerCov,
      _serviceFont , _serviceCov, _profileFont , _profileCov, _setFont , _setCov;

  AddColors(_col){
    if(_col == 'dashboard'){
      _dashFont = AppColor.whiteFont;
      _dashCov = AppColor.mainColor;
      _orderFont = AppColor.blackFont;
      _orderCov  =AppColor.whiteFont;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;
      _setFont = AppColor.blackFont;
      _setCov = AppColor.whiteFont;
    }
    else if(_col == 'orders'){
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.whiteFont;
      _orderCov  =AppColor.mainColor;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;
      _setFont = AppColor.blackFont;
      _setCov = AppColor.whiteFont;
    }
    else if(_col == 'cleaners'){
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.blackFont;
      _orderCov  =AppColor.whiteFont;
      _cleanerFont = AppColor.whiteFont;
      _cleanerCov = AppColor.mainColor;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;
      _setFont = AppColor.blackFont;
      _setCov = AppColor.whiteFont;
    }
    else if(_col == 'services'){
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.blackFont;
      _orderCov  =AppColor.whiteFont;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.whiteFont;
      _serviceCov = AppColor.mainColor;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;
      _setFont = AppColor.blackFont;
      _setCov = AppColor.whiteFont;
    }
    else if(_col == 'profile'){
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.blackFont;
      _orderCov  =AppColor.whiteFont;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.whiteFont;
      _profileCov = AppColor.mainColor;
      _setFont = AppColor.blackFont;
      _setCov = AppColor.whiteFont;
    }
    else if(_col == 'settings'){
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.blackFont;
      _orderCov  =AppColor.whiteFont;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;
      _setFont = AppColor.whiteFont;
      _setCov = AppColor.mainColor;
    }
  }

  Widget build(BuildContext context) {
    AddColors(value);
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Side menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                  // color: Colors.green,
                  image: DecorationImage(
                      // fit: BoxFit.fill,
                      image: AssetImage('assets/img_1.png'))),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: _dashCov,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    width: 200,
                    height: 80,
                    child: ListTile(
                      // hoverColor: Colors.orange,
                      leading: Icon(Icons.home_filled,color: _dashFont,),
                      title: Text('Dashboard',
                          style: TextStyle(fontSize: 18, color: _dashFont)),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => DashboardPage(),
                            ));
                      },
                      contentPadding: EdgeInsets.only(left: 30, top:18,bottom: 20),
                      style: ListTileStyle.drawer,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: _orderCov,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    width: 200,
                    height: 80,
                    child: ListTile(
                      // hoverColor: Colors.orange,
                      leading: Icon(Icons.list_alt_rounded,color: _orderFont,),
                      title: Text('Orders',
                          style: TextStyle(fontSize: 18, color: _orderFont)),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => OrdersPage(),
                            ));
                      },
                      contentPadding: EdgeInsets.only(left: 30, top:18,bottom: 20),
                      style: ListTileStyle.drawer,

                      tileColor: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: _cleanerCov,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    width: 200,
                    height: 80,
                    child: ListTile(
                      // hoverColor: Colors.orange,
                      leading: Icon(Icons.people ,color: _cleanerFont,),
                      title: Text('Cleaners',
                          style: TextStyle(fontSize: 18, color: _cleanerFont)),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => CleanPage(),
                            ));
                      },
                      contentPadding: EdgeInsets.only(left: 30, top:18,bottom: 20),
                      style: ListTileStyle.drawer,

                      tileColor: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: _serviceCov,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    width: 200,
                    height: 80,
                    child: ListTile(
                      // hoverColor: Colors.orange,
                      leading: Icon(Icons.cleaning_services,color: _serviceFont,),
                      title: Text('Services',
                          style: TextStyle(fontSize: 18, color: _serviceFont)),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => ServicePage(),
                            ));
                      },
                      contentPadding: EdgeInsets.only(left: 30, top:18,bottom: 20),
                      style: ListTileStyle.drawer,

                      tileColor: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: _profileCov,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    width: 200,
                    height: 80,
                    child: ListTile(
                      // hoverColor: Colors.orange,
                      leading: Icon(Icons.account_circle_rounded,color: _profileFont,),
                      title: Text('Profile',
                          style: TextStyle(fontSize: 18, color: _profileFont)),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => ProfilePage(),
                            ));
                      },
                      contentPadding: EdgeInsets.only(left: 30, top:18,bottom: 20),
                      style: ListTileStyle.drawer,

                      tileColor: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: _setCov,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    width: 200,
                    height: 80,
                    child: ListTile(
                      // hoverColor: Colors.orange,
                      leading: Icon(Icons.settings,color: _setFont,),
                      title: Text('Settings',
                          style: TextStyle(fontSize: 18, color:_setFont)),
                      onTap: () => {},
                      contentPadding: EdgeInsets.only(left: 30, top:18,bottom: 20),
                      style: ListTileStyle.drawer,

                      tileColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



// MenuItems(var _col){
//
//
//
//
//   return
// }