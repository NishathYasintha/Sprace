import 'package:flutter/material.dart';
import 'package:sprace/Screens/orders.dart';
import 'package:sprace/Screens/profile.dart';
import 'package:sprace/Screens/service.dart';
import 'package:sprace/component/colors.dart';
// import 'package:sprace/component/header.dart';

import '../Screens/cleaners.dart';
import '../Screens/dashboard.dart';

var _page='Dashboard';

class SideMenu extends StatefulWidget {
  // const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {


  @override
  var _dashFont , _dashCov, _orderFont , _orderCov, _cleanerFont , _cleanerCov,
      _serviceFont , _serviceCov, _profileFont , _profileCov, _setFont , _setCov;

  LoadPage(){
    if(_page == 'Dashboard'){
         return DashboardPage();
    }
    else if(_page == 'Orders'){
         return OrdersPage();
    }
    else if(_page == 'Cleaners'){
      return CleanPage();
    }
    else if(_page == 'Services'){
      return ServicePage();
    }
    else if(_page == 'Profile'){
      return ProfilePage();
    }
    else {
      return DashboardPage();
    }
  }

  EditPage(var _npage){
    if(_npage == 'Dashboard'){
      setState(() {
        _page = _npage;
      });
    }
    else if(_npage == 'Orders'){
      setState(() {
        _page = 'Orders';
      });

    }
    else if(_npage == 'Cleaners'){
      setState(() {
        _page = 'Cleaners';
      });

    }
    else if(_npage == 'Services'){
      setState(() {
        _page = 'Services';
      });

    }
    else if(_npage == 'Profile'){
      setState(() {
        _page = 'Profile';
      });

    }
  }


  AddColors(_col){
    if(_col == 'Dashboard'){
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
    else if(_col == 'Orders'){
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
    else if(_col == 'Cleaners'){
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
    else if(_col == 'Services'){
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
    else if(_col == 'Profile'){
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
    else if(_col == 'Settings'){
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
  final items = ['Admin'];
  String? selectedItem = 'Admin';

  Widget build(BuildContext context) {
    AddColors(_page);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Drawer(
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
                                EditPage('Dashboard');
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
                                    EditPage('Orders');
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
                                EditPage('Cleaners');
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
                                EditPage('Services');
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
                              onTap: (){EditPage('Profile');
                              },
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
            ),
      
            //Header
      
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width - 350,
                    // color: Color(0xffE5E5E5),
                    child: Row(
                      children: [
                        SizedBox(width: 40,),
                        Expanded(
                            child:
                            Topic(_page)
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 50,
                            child: TextField(
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Colors.teal,
                                      width: 0.0
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search Anything',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 120,),
                        Row(
                          children: [
                            // Icon(Icons.notifications_none),
                            SizedBox(width: 20,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img_4.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              child: SizedBox(
                                width: 100,
                                height: 50,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    underline: null,
                                    value: selectedItem,
                                    items: items
                                        .map((item)=> DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item)
                                    )
                                    ).toList(),
                                    onChanged: (item) =>setState(() {
                                      selectedItem=item;
                                    }),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  LoadPage()
                ],
                  
              ),
            )
          ],
        ),
      ),
    );
  }
}


Topic(var _topic){
  return Container(
      child:Text(_topic,style: TextStyle(color: AppColor.textDark, fontSize: 30),)
  );
}
