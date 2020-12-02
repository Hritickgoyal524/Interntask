import 'package:flutter/material.dart';
import 'package:interntaskapp/Vegetables.dart';
import 'package:interntaskapp/fruits.dart';


// ignore: must_be_immutable
class Categories extends StatelessWidget{
List gerocry=["Fruits","Vegitables","Grains","Masala","Frozenfood","Beverages","Soaps"];
Widget build(BuildContext context){
    return
  Expanded(
     
     child:
      GridView.count(
      crossAxisCount:2,
       shrinkWrap: true,
      crossAxisSpacing:8,
      //mainAxisSpacing:,
      children:gerocry.map((eachvalue){
       return InkWell(
         onTap:(){
           if(eachvalue=="Fruits"){
          
           Navigator.push(context,MaterialPageRoute(builder:(context)=>Fruitsbar(name:eachvalue)));
                  }
          else if(eachvalue=="Vegitables"){
           Navigator.push(context,MaterialPageRoute(builder:(context)=>Vegetablebar(name:eachvalue)));
                  }   
                  },
         child: Container(
        
        
           //gradient:LinearGradient(colors:eachvalue.colors) ),
           child:Stack(
            children: [
             ClipRRect(
              
              borderRadius: BorderRadius.circular(12),
                
               // color:Colors.black,)
                
                child:Image.asset("images/$eachvalue.jpg",height: 155,width:185,fit:BoxFit.cover)
                ),
            Container(height: 30,
              margin: EdgeInsets.only(top:70,),
              padding: EdgeInsets.symmetric(horizontal:30,vertical: 5),
              decoration: BoxDecoration(borderRadius: BorderRadius.only(  topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
                  color: Colors.white)
                  ,
              child:Text(
              eachvalue
            ))],
           )
       )
       );
      }).toList()
      ));
    }
  }
