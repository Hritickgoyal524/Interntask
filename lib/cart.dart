import 'package:flutter/material.dart';
import 'package:interntaskapp/Profile.dart';
import 'package:interntaskapp/home.dart';
class Cartitem extends StatefulWidget{
 
  
  _CartitemState createState()=>_CartitemState();
}

class _CartitemState extends State<Cartitem>{
 int _currentIndex = 0;
 final List<Widget> _children = [
  Cart(),ProfilePage()];
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

class Cart extends StatefulWidget{
  _CartState createState()=>_CartState();
}
class _CartState extends State<Cart>{
 
     Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
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
      },)],
       leading: IconButton(
            icon: Icon( Icons.arrow_back,size:30), 
            onPressed: () {  Navigator.push(context,MaterialPageRoute(builder:(context)=>Home()));
            },
          ),),
      body:Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[Container(

           margin: EdgeInsets.only(left:MediaQuery.of(context).size.width-70,top:14),
            child:Text("Clear",style: TextStyle(color: Colors.green[400],fontSize: 17),)
          ),
Expanded(child:
          ListView.builder(
              shrinkWrap: true,
              
         itemCount:4,
         itemBuilder:(context,index){
           return
          Container(
            padding: EdgeInsets.only(left:20,bottom:10,top:10),
           // color: Colors.amber,
          child:
            Row(children: [
         Container(
           //color: Colors.black,
           height: 100,
           width: 300,
           child:Card(elevation: 2,
           shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
  ),
             child:
         Row(children: [
           Card(child:Image.asset("images/Apple.jpg",height: 80,width: 70,fit:BoxFit.cover,)),
         Container(margin: EdgeInsets.only(left:15,top:11),
           child:Column(children: [
          Text("Apple",style: TextStyle(fontWeight: FontWeight.w500),),
          SizedBox(height: 35)
          ,Text("120/Kg",style: TextStyle(fontWeight: FontWeight.w500))

         ],)),
         Container(
           margin: EdgeInsets.only(left:115,top:9),
           child:
         Column(children: [
 Container(
           height: 20,
            width: 20,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
               color: Colors.green,),
               child:Icon(Icons.remove,color: Colors.white,size: 16,)),
                SizedBox(height:28),
                 Container(
             height: 20,
             width: 20,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
               color: Colors.green,),
             
                child:Icon(Icons.add,color: Colors.white,size: 16,))
            ],)
         ),
        
         ],) )),
         SizedBox(width: 27,),
 Container(

           child:Column(
            
             children: [
               Container(
                 margin: EdgeInsets.only(top:22),
                 child:Text("120",style:TextStyle(color: Colors.green[400],fontSize: 17))),
               SizedBox(height:20),
               Container(
                     margin: EdgeInsets.only(top:10),
                 child:Icon(Icons.add,color:Colors.green[400],size: 29,),)
             ],))

          ],));
          }
)),
        Container(
        margin: EdgeInsets.only(left:MediaQuery.of(context).size.width-130,top:12),
          child: Text("Total Cost",style: TextStyle(fontSize: 18,color: Colors.green[400]),),) 
          ,Container(
        margin: EdgeInsets.only(left:MediaQuery.of(context).size.width-90,top:15,bottom: 20),
          child: Text("480 Rs",style: TextStyle(fontSize: 18,color: Colors.green[400]),),)
          
            ] )
      )
      
      
      );
       

     }}