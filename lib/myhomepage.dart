
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:interntaskapp/Vegetables.dart';
//import 'package:interntaskapp/Profile.dart';
import 'package:interntaskapp/categores.dart';
import 'package:interntaskapp/draw.dart';
import 'package:interntaskapp/fruits.dart';
class MyHomePage extends StatefulWidget{
  _MyHomePageState createState()=>_MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  int count=0;
 int ch=0;
  
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Gerocery Store'),
     centerTitle: true, 
     actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.notifications,
        color: Colors.white,
        size: 32,
      ),
      onPressed: () {
        // do something
      },)]),
      body: Container(margin: EdgeInsets.symmetric(horizontal:20),
        child:
        Column(
        
        children:[
        Container(
          margin: EdgeInsets.symmetric(vertical:17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          border: Border.all(
                    color: Colors.green[400],
                    )
          ),
          child:
        TextField(
                   decoration: InputDecoration(
                   
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.green[400]),
                    prefixIcon: Icon(Icons.search,color: Colors.green[400],size: 30,)
                    ,border: InputBorder.none
      ))),
    
    CarouselSlider.builder(itemCount: 3, 
             options: CarouselOptions(
             viewportFraction:0.825,
             enableInfiniteScroll: true,
             autoPlay: true,
             autoPlayInterval: Duration(seconds: 8),
             autoPlayAnimationDuration: Duration(milliseconds:800),
             autoPlayCurve: Curves.easeIn,
             enlargeCenterPage: true,
             scrollDirection: Axis.horizontal
           ),
           itemBuilder:(context,index) {
     return Container(
    //width: 500,
    
               // color:Colors.amber,
                child:Center(child:
                 Image.asset("images/gerocery.jpg",height: 200,width: 335,fit: BoxFit.cover,)
     ));
     
    }
     ),
     Container(margin: EdgeInsets.symmetric(vertical: 10),
       child:
     Row(children: [GestureDetector(
       onTap: () {
         setState(() {
           count=0;
           ch=0;
         });
       },
       child:
        Container(height: 40,
         // width:120,
             // margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal:15,vertical: 10),
            
                child: Text('Categories',style: TextStyle(fontSize: 15,color: Colors.white),),
                decoration:BoxDecoration(
                   color: ch==0?Colors.red:Colors.green[400],
                  borderRadius:BorderRadius.circular(30)
                ) )),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      count=1;
                      ch=1;
                    });
                  },
                  child:
                Container(height: 40,
          width:120,
             // margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal:15,vertical: 10),
            
                child: Text('New Arrival',style: TextStyle(fontSize: 14,color: Colors.white),),
                decoration:BoxDecoration(
                  color:ch==1? Colors.red:Colors.green[400],
                  borderRadius:BorderRadius.circular(30)
                ) ,
                )), 
                GestureDetector(
                  onTap: (){
                    setState(() {
                      count=2;
                      ch=2;
                    });
                  },
                  child:
                Container(height: 40,
          width:140,
             // margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal:14,vertical: 10),
            
                child: Text('Budget Friendly',style: TextStyle(fontSize: 14,color: Colors.white)),
                decoration:BoxDecoration(
                  color: ch==2?Colors.red:Colors.green[400],
                  borderRadius:BorderRadius.circular(30)
                ) ,
               
              
                 ) ),
     ],),),
     SizedBox(height:20),
    count>0?count==1?Fruitslist():Categories():Categories()
      ]) 
    ));
  }
}