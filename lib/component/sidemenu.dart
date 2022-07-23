import 'package:flutter/material.dart';
import 'package:sprace/Screens/profile.dart';
import 'package:sprace/Screens/service.dart';
import 'package:sprace/component/colors.dart';
import '../Screens/cleaners.dart';
import '../Screens/dashboard.dart';
import '../Screens/login.dart';
import '../Screens/inorder.dart';

var _page = 'Dashboard';

class SideMenu extends StatefulWidget {
  // const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  var _filterBy = 0;

  @override
  var weightAll=FontWeight.w700;
  var weightProcessing=FontWeight.w400;
  var weightCompleted=FontWeight.w400;
  var weightRejected=FontWeight.w400;

  OrderPage(){
    return Container(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // HeaderBar(value: 'Orders',),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 15),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    GestureDetector(
                      onTap:(()=>{
                        _filterBy = 0,
                        filter(_filterBy),
                        TitleColor()
                      }),
                      child: Container(
                        child: Text('All(2000)',style: TextStyle(fontSize: 17, fontWeight: weightAll),),
                      ),
                    ),
                    Text('    |    ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                    GestureDetector(
                      onTap: (()=>{
                        _filterBy = 1,
                        filter(_filterBy),
                        TitleColor()
                      }),
                      child: Container(
                        child: Text('Processing(100)',style: TextStyle(fontSize: 17, fontWeight: weightProcessing),),
                      ),
                    ),
                    Text('    |    ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                    GestureDetector(
                      onTap: (()=>{
                        _filterBy = 2,
                        filter(_filterBy),
                        TitleColor()

                      }),
                      child: Container(
                        child: Text('Completed(20)',style: TextStyle(fontSize: 17, fontWeight: weightCompleted),),
                      ),
                    ),
                    Text('    |    ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                    GestureDetector(
                      onTap: (()=>{
                        _filterBy = 3,
                        filter(_filterBy),
                        TitleColor()

                      }),
                      child:Container(
                        child: Text('Rejected(2)',style: TextStyle(fontSize: 17, fontWeight: weightRejected),),
                      ),
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
                child: Padding(
                  padding: const EdgeInsets.only(top:10 ,left:7 , right:7 ,bottom:10 ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
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
                            OrderDerails('Order1','Aug 4,2021', 'completed', 3000,filterType: _filterBy),
                            OrderDerails('Order2','Aug 4,2021', 'processing', 3000, filterType: _filterBy),
                            OrderDerails('Order1','Aug 4,2021', 'completed', 3000, filterType: _filterBy),
                            OrderDerails('Order3','Aug 4,2021', 'rejected', 3000, filterType: _filterBy),



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
        ),
      ),

    );
  }

  filter(var filterBy){
    print(filterBy);
    setState(() {

    });
  }

  OrderDerails (var _order, var _date, var _status, var _price,{int filterType = 0}) {
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

    if(filterType == 0){
      return GestureDetector(
          onTap: () {
            print("dineth");
          },
          child: Container(child:loadDetails(_order, _date, _status, _price, _x, _c),));

    }
    else if(filterType == 1){
      if(_status=='processing'){
        return Container(
          child: loadDetails(_order, _date, _status, _price, _x, _c),
        );
      }
      else{
        return Container();
      }

    }
    else if(filterType == 2){
      if(_status == 'completed'){
        return Container(
          child: loadDetails(_order, _date, _status, _price, _x, _c),
        );
      }
      else{
        return Container();
      }
    }
    else if(filterType == 3){
      if(_status=='rejected'){
        return Container(
          child: loadDetails(_order, _date, _status, _price, _x, _c),
        );
      }
      else{
        return Container();
      }
    }
  }

  loadDetails(var _order, var _date, var _status, var _price, var _x, var _c){

    return GestureDetector(
      onTap: () {
        setState(() {
          _page = 'InOrder';
        });
      },
      child: Container(
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
      ),
    );
  }

  var _dashFont, _dashCov, _orderFont, _orderCov, _cleanerFont, _cleanerCov, _serviceFont, _serviceCov, _profileFont, _profileCov;

  LoadPage() {
    if (_page == 'Dashboard') {
      return DashboardPage();
    } else if (_page == 'Orders') {
      return OrderPage();
    } else if (_page == 'InOrder') {
      return InOrderPage();
    } else if (_page == 'Cleaners') {
      return CleanPage();
    } else if (_page == 'Services') {
      return ServicePage();
    } else if (_page == 'Profile') {
      return ProfilePage();
    } else {
      return DashboardPage();
    }
  }

  EditPage(var _npage) {
    if (_npage == 'Dashboard') {
      setState(() {
        _page = _npage;
      });
    } else if (_npage == 'Orders') {
      setState(() {
        _page = 'Orders';
      });
    } else if (_npage == 'InOrder') {
      setState(() {
        _page = 'InOrder';
      });
    } else if (_npage == 'Cleaners') {
      setState(() {
        _page = 'Cleaners';
      });
    } else if (_npage == 'Services') {
      setState(() {
        _page = 'Services';
      });
    } else if (_npage == 'Profile') {
      setState(() {
        _page = 'Profile';
      });
    }
  }

  AddColors(_col) {
    if (_col == 'Dashboard') {
      _dashFont = AppColor.whiteFont;
      _dashCov = AppColor.mainColor;
      _orderFont = AppColor.blackFont;
      _orderCov = AppColor.whiteFont;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;
    } else if (_col == 'Orders' || _col == 'InOrder') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.whiteFont;
      _orderCov = AppColor.mainColor;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;

    } else if (_col == 'Cleaners') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.blackFont;
      _orderCov = AppColor.whiteFont;
      _cleanerFont = AppColor.whiteFont;
      _cleanerCov = AppColor.mainColor;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;
    } else if (_col == 'Services') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.blackFont;
      _orderCov = AppColor.whiteFont;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.whiteFont;
      _serviceCov = AppColor.mainColor;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;
    } else if (_col == 'Profile') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.blackFont;
      _orderCov = AppColor.whiteFont;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.whiteFont;
      _profileCov = AppColor.mainColor;
    } else if (_col == 'Settings') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _orderFont = AppColor.blackFont;
      _orderCov = AppColor.whiteFont;
      _cleanerFont = AppColor.blackFont;
      _cleanerCov = AppColor.whiteFont;
      _serviceFont = AppColor.blackFont;
      _serviceCov = AppColor.whiteFont;
      _profileFont = AppColor.blackFont;
      _profileCov = AppColor.whiteFont;
    }
  }

  final items = ['Admin'];
  String? selectedItem = 'Admin';

  TitleColor(){
    if(_filterBy == 0){
      weightAll = FontWeight.w700;
      weightProcessing=FontWeight.w400;
      weightCompleted=FontWeight.w400;
      weightRejected=FontWeight.w400;
    }
    if(_filterBy == 1){
      weightAll = FontWeight.w400;
      weightProcessing=FontWeight.w700;
      weightCompleted=FontWeight.w400;
      weightRejected=FontWeight.w400;
    }
    if(_filterBy == 2){
      weightAll = FontWeight.w400;
      weightProcessing=FontWeight.w400;
      weightCompleted=FontWeight.w700;
      weightRejected=FontWeight.w400;

    }
    if(_filterBy == 3){
      weightAll = FontWeight.w400;
      weightProcessing=FontWeight.w400;
      weightCompleted=FontWeight.w400;
      weightRejected=FontWeight.w700;
    }
  }

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
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _dashCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.home_filled,
                                color: _dashFont,
                              ),
                              title: Text('Dashboard',
                                  style: TextStyle(
                                      fontSize: 18, color: _dashFont)),
                              onTap: () {
                                EditPage('Dashboard');
                              },
                              contentPadding:
                                  EdgeInsets.only(left: 30, top: 8, bottom: 20),
                              style: ListTileStyle.drawer,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _orderCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.list_alt_rounded,
                                color: _orderFont,
                              ),
                              title: Text('Orders',
                                  style: TextStyle(
                                      fontSize: 18, color: _orderFont)),
                              onTap: () {
                                EditPage('Orders');
                              },
                              contentPadding:
                                  EdgeInsets.only(left: 30, top: 8, bottom: 20),

                              style: ListTileStyle.drawer,

                              tileColor: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _cleanerCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.people,
                                color: _cleanerFont,
                              ),
                              title: Text('Cleaners',
                                  style: TextStyle(
                                      fontSize: 18, color: _cleanerFont)),
                              onTap: () {
                                EditPage('Cleaners');
                              },
                              contentPadding:
                                  EdgeInsets.only(left: 30, top: 8, bottom: 20),
                              style: ListTileStyle.drawer,

                              tileColor: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _serviceCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.cleaning_services,
                                color: _serviceFont,
                              ),
                              title: Text('Services',
                                  style: TextStyle(
                                      fontSize: 18, color: _serviceFont)),
                              onTap: () {
                                EditPage('Services');
                              },
                              contentPadding:
                                  EdgeInsets.only(left: 30, top: 8, bottom: 20),
                              style: ListTileStyle.drawer,

                              tileColor: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _profileCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.account_circle_rounded,
                                color: _profileFont,
                              ),
                              title: Text('Profile',
                                  style: TextStyle(
                                      fontSize: 18, color: _profileFont)),
                              onTap: () {
                                EditPage('Profile');
                              },
                              contentPadding:
                                  EdgeInsets.only(left: 30, top: 8, bottom: 20),
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
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                            child: Container(
                              width: 200,
                                child: Topic(_page)
                            )
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
                                      color: Colors.teal, width: 0.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search Anything',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Row(
                          children: [
                            // Icon(Icons.notifications_none),
                            SizedBox(
                              width: 20,
                            ),
                            PopupMenu(
                              menuList: [
                                PopupMenuItem(
                                    child: ListTile(
                                  title: Text('Sign Out'),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LoginPage(),
                                        ));
                                  },
                                ))
                              ],
                              icon: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/img_4.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: SizedBox(
                                width: 100,
                                height: 50,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    underline: null,
                                    value: selectedItem,
                                    items: items
                                        .map((item) => DropdownMenuItem<String>(
                                            value: item, child: Text(item)))
                                        .toList(),
                                    onChanged: (item) => setState(() {
                                      selectedItem = item;
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
                  LoadPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopupMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopupMenu({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}

Topic(var _topic) {
  return Container(
      child: Text(
    _topic,
    style: TextStyle(color: AppColor.textDark, fontSize: 30),
  ));
}

derectToInOrder() {
  _page = "InOrder";
}
