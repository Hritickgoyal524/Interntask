import 'package:flutter/material.dart';
import 'package:interntaskapp/Aboutitem.dart';
import 'package:interntaskapp/Profile.dart';
import 'package:interntaskapp/cart.dart';
import 'package:interntaskapp/help/data.dart';
//import 'package:interntaskapp/myhomepage.dart';
// ignore: must_be_immutable




String vegetablename;

class Vegetablebar extends StatefulWidget{
  String name;
  Vegetablebar({this.name});
  _VegetablebarState createState()=>_VegetablebarState();
}




class _VegetablebarState extends State<Vegetablebar>{
  void initState() {
   vegetablename=widget.name;
    super.initState();
  
  }
 int _currentIndex = 0;
  final List<Widget> _children = [
  Vegitable(),Cart(),ProfilePage()];
    Widget build(BuildContext context) {
    return Scaffold(
     
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.green[400],
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 30,),
            // ignore: deprecated_member_use
           title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,size: 30,),
            // ignore: deprecated_member_use
           title: Text('Search'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 30,),
              // ignore: deprecated_member_use
            title: Text('Profile')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// ignore: must_be_immutable
class Vegitable extends StatelessWidget {


  List <Vegidata>vegitables=[Vegidata(name:"Patato",rate:"40/KG"),Vegidata(name:"Tamato",rate:"80/KG")
  ,Vegidata(name:"Lemon",rate:"70/KG"),
Vegidata(name:"Bringle",rate:"30/KG"),Vegidata(name:"Patato",rate:"40/KG"),
Vegidata(name:"Lemon",rate:"70/KG"),
  ];
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vegetablename),
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
      body:Container(margin: EdgeInsets.symmetric(horizontal:20),
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
     Expanded(child:
      GridView.count(
      childAspectRatio: 0.69,
      crossAxisCount:2,
       shrinkWrap: true,
       physics: ScrollPhysics(),
      crossAxisSpacing:12,
      mainAxisSpacing: 10,
      //mainAxisSpacing:,
      children:vegitables.map((eachvalue){
       return InkWell(
         onTap:(){
           Navigator.push(context,MaterialPageRoute(builder:(context)=>AboutItem(name:eachvalue.name,rate:eachvalue.rate)));
                  },
         child: Card(
            elevation: 5,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
  ),
          // color: Colors.amber,
        child:Column(children: [
          Container(
            margin:EdgeInsets.only(left:140,top:10),
            child:Icon(Icons.add_shopping_cart,color: Colors.green[400],)),
            Container(child:Image.asset("images/${eachvalue.name}.jpg",width:130,height:120,fit:BoxFit.cover))
           , SizedBox(height:25),
           Center(child:Text(eachvalue.name,style: TextStyle(color: Colors.green[400]),),),
           SizedBox(height:22),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
            Text(eachvalue.rate,style: TextStyle(color: Colors.green[400])),
           ],)
        ],)
         )  );
       
      }).toList()
      ))])));
  }}