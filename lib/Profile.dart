

import 'package:flutter/material.dart';
import 'package:interntaskapp/home.dart';
import 'package:interntaskapp/myhomepage.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Text('MY ACCOUNT'),
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
          ), ),
      body:Container(child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal:15,vertical:20),
        width: 450,
        height: 300,
        child: Card(
          elevation: 5,
        child: Column(children: [
          Container(padding: EdgeInsets.only(top: 20),
            child: 
         CircleAvatar(radius: 50,
  backgroundImage: AssetImage('images/profile.jpg'),
)),

Container(margin: EdgeInsets.only(left:35,top:35),
  child: Row(children:[
  Container(
    width: 150,
    //color:Colors.amber,
    padding: EdgeInsets.only(left:1,top:3),
    child:Column(children: [
    Text("Hritick Goyal",style: TextStyle(fontSize:20,fontWeight: FontWeight.w500),),
    SizedBox(height:13,),
    Text("(+91) 1111111",style: TextStyle(fontSize:16)),
SizedBox(height:13),
    Text("Goyal@gmail.com",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500))

],)),
SizedBox(width: 65,),
Container(
    height: 130,
   child: Text("|",style: TextStyle(fontSize: 95,fontWeight: FontWeight.w100,color: Colors.black87.withOpacity(0.3)),),),
SizedBox(width: 20,),
GestureDetector(child:
Container(
    
    child:Icon(Icons.edit,size: 45,color: Colors.black87.withOpacity(0.7),)))
]),),

        ],),
      )),
      
     Container(
       margin: EdgeInsets.only(left:20),
       child:Text("Address",style: TextStyle(color: Colors.green[400],fontSize: 18),)) ,
SizedBox(height:20),
       Container(
        width: 450,
        height: 200,
        
         margin: EdgeInsets.symmetric(horizontal:15),
         
         child:Card(elevation: 5,
           child:Column(children:[
           Container(
             padding: EdgeInsets.symmetric(horizontal:20,vertical:20),
             child:
           Text("314  Tree Frog Lane Kansas City MO Missouri"),),
          Container(margin: EdgeInsets.only(left:MediaQuery.of(context).size.width-107,top:77
          ),
            child:
        ClipRRect(  borderRadius: BorderRadius.circular(20),
          child:Image.asset("images/correct.png",height: 40,width: 40,fit:BoxFit.cover)))
         ]) ))],))
    );}}