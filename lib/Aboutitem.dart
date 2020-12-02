
import 'package:flutter/material.dart';
import 'package:interntaskapp/Profile.dart';
import 'package:interntaskapp/cart.dart';

// ignore: must_be_immutable
String applename="hii";
String applerate="scasc";
class AboutItem extends StatefulWidget{
  String name;
  String rate;
  AboutItem({this.name,this.rate});
  
  _AboutItemState createState()=>_AboutItemState();
}




class _AboutItemState extends State<AboutItem>{
 int _currentIndex = 0;
@override
void initState() {
   
    super.initState();
  
  
    applename=widget.name;
    applerate=widget.rate;
    
  }

  final List<Widget> _children = [
  AppleData(),Cart(),ProfilePage()];
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







class AppleData extends StatelessWidget{
  var data=" According to the book ‘Healing Foods’ by DK Publishing, the fructose (a class of sugar) and antioxidant polyphenols in apples improve the metabolic balance and slow the rate at which sugar is absorbed in the body. This property of apples is especially effective for diabetics, who have to keep their blood sugar spike in check. Experts have also suggested that apples lower risk of developing type 2 diabetes because of a class of antioxidants called Anthocyanin, that is also responsible for red, purple and blue colors in fruits and veggies.";

  
  Widget build(BuildContext context){
    return Scaffold(
  
    body: 
    Container(child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Stack(
          children: [
            Image.asset("images/Appledata.jpg",height: 350,fit: BoxFit.cover,),
GestureDetector(
  onTap: (){
    Navigator.of(context).pop();
  },
  child:
            Container(
              height: 40,
              width: 40,
              decoration:BoxDecoration(borderRadius:BorderRadius.circular(20),
              color: Colors.white
              ),
              margin: EdgeInsets.only(left:15,top:35),
              child: Icon(
        Icons.arrow_back,
        color: Colors.green[400],
        size: 32,
      ))),

            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Cart()));
              },
              child:
            Container(
              height: 40,
              width: 40,
              decoration:BoxDecoration(borderRadius:BorderRadius.circular(20),
              color: Colors.white),
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width-50,top:35),
              child: Icon(
        Icons.add_shopping_cart_rounded,
        color: Colors.green[400],
        
      ))),
          ],
        ),
Row(children:[
Container(margin:EdgeInsets.symmetric(horizontal: 50,vertical: 30),
  child: 

Text(applename,style:TextStyle(color: Colors.green[400],fontSize: 22,fontWeight: FontWeight.w600)),)
    ,Container(
      height: 40,
      width: 100,
      color: Colors.green[400],
      margin:EdgeInsets.only(left:130),
      child: Row(children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal:5,vertical:2),
        margin: EdgeInsets.only(left:10),
        height: 20,
        width: 20,
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
        color:Colors.white),
        child: Text("0",style: TextStyle(color: Colors.green[400]
        ),)
        
        ,),
        SizedBox(width: 7,),
        Container(child:Text("Qty",style: TextStyle(color: Colors.white),)),
      SizedBox(width:7),
       Image.asset("images/arrowicon.png",height: 11,width: 20,fit:BoxFit.cover)
      ],
        
        ),) 
         ] ),

         Container(
           margin:EdgeInsets.symmetric(horizontal: 50,),
           child:Text(applerate,style:TextStyle(color: Colors.green[400],fontSize: 16,fontWeight: FontWeight.w400),))
      ,
      Container(width: MediaQuery.of(context).size.width,
        margin:EdgeInsets.symmetric(horizontal: 50,vertical: 30),
        child:
        Text(data)
      )
      ])));
  }
}