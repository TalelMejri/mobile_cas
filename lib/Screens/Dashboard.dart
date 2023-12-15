import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_cas/Screens/Level/Biogas.dart';
import 'package:mobile_cas/Screens/Level/Electricity.dart';
import 'package:mobile_cas/Screens/Level/Methane.dart';
import 'package:mobile_cas/Screens/Level/Trash.dart';

class Dashboard extends StatefulWidget{
  const Dashboard({super.key});

  @override
  State<Dashboard> createState()=>_Dashboard();
}

class _Dashboard extends State<Dashboard>{

  int _selectIndex=1;
  
  void changeSelectedINdex(int index){
    setState(() {
      switch (index){
        case 0:
          _selectIndex=0;
          interface="Trash Level";
          _widget=Trash();
          break;
        case 1:
          _selectIndex=1;
          interface="Biogas Level";
          _widget=Biogas();
          break;
        case 2:
          _selectIndex=2;
           interface="Electricity Level";
          _widget=Electricity();
          break;
        case 3:
          _selectIndex=3;
          interface="Methane(CH4) Level";
          _widget=Methane();
          break;
      }
    });
  }

  String interface = "Trash Level";

  late Widget _widget = const Biogas();

  @override
  Widget build(BuildContext context){
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("$interface",style: TextStyle(color: Colors.white)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CurvedNavigationBar(
          color:Colors.black,
          buttonBackgroundColor:Colors.black,
          backgroundColor:Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration:const  Duration(milliseconds: 600),
        onTap: (index){changeSelectedINdex(index);},
        index: _selectIndex,
         items:<Widget> [
             Icon(Icons.delete,color: Colors.white),
             Icon(Icons.gas_meter,color: Colors.white),
             Icon(Icons.electric_bolt,color: Colors.white),
             Icon(Icons.card_giftcard_sharp,color: Colors.white),
      ]),
      
      body: _widget
    );
  }
}