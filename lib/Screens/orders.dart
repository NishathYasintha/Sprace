import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';


class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  var _filterBy = 0;

  
  @override
  Widget build(BuildContext context) {

    filter(var filterBy){
    print(filterBy);
    setState(() {
      
    });
  }

    var weightAll=FontWeight.w400;
    var weightProcessing=FontWeight.w400;
    var weightCompleted=FontWeight.w400;
    var weightRejected=FontWeight.w400;

    if(_filterBy == 0){
      weightAll = FontWeight.w700;
    }
    if(_filterBy == 1){
      weightProcessing = FontWeight.w700;
    }
    if(_filterBy == 2){
      weightCompleted = FontWeight.w700;
      
    }
    if(_filterBy == 3){
      weightRejected = FontWeight.w700;
    }
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
            )
            //****************
          ],
        ),
      ),
      
    );
  }
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
      print("dineth");
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