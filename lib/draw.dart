
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
        color: Colors.green[400],
        child:ListView(
        
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(height:55),
          GestureDetector(
             onTap:() => {Navigator.of(context).pop()},
            child:
         Container(padding: EdgeInsets.only(left:250),
           color:Colors.green[400],
           child:Text("X",style: TextStyle(color: Colors.white,fontSize: 25))
         
          )) ,
          SizedBox(height:115),
          ListTile(
             contentPadding: EdgeInsets.only(left:35),
            title: Text('Home',style: TextStyle(color: Colors.white,fontSize: 16),),
            onTap: () => {},
          ),
          ListTile(
           contentPadding: EdgeInsets.only(left:35),
            title: Text('Cart',style: TextStyle(color: Colors.white,fontSize: 16)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left:35),
            title: Text('Orders',style: TextStyle(color: Colors.white,fontSize: 16)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          
          ListTile(
           contentPadding: EdgeInsets.only(left:35),
            title: Text('Settings',style: TextStyle(color: Colors.white,fontSize: 16)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
           contentPadding: EdgeInsets.only(left:35),
            title: Text('Logout',style: TextStyle(color: Colors.white,fontSize: 16)),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    ));
  }
}