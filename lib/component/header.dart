import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';

class HeaderBar extends StatefulWidget {
  // const HeaderBar({Key? key}) : super(key: key);
String value='';
HeaderBar({required this.value});
  @override
  State<HeaderBar> createState() => _HeaderBarState(value);
}

class _HeaderBarState extends State<HeaderBar> {
  String value='';
  _HeaderBarState(this.value);

  final items = ['Admin', 'User', 'Cleaners'];
  String? selectedItem = 'Admin';


  @override
  Widget build(BuildContext context) {
    return Column(
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
               Topic(value)
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
                 Icon(Icons.notifications_none),
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
      ],
    );
  }
}


Topic(var _topic){
  return Container(
      child:Text(_topic,style: TextStyle(color: AppColor.textDark, fontSize: 30),)
  );
}