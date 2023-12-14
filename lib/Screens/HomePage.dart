import 'package:flutter/material.dart';
import 'package:mobile_cas/Screens/Steps/StepOne.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Widget steps=stepOne();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.navigate_next))
        ],
      ),
      body:Center(
          child:Padding(padding: EdgeInsets.all(25),child: Column(children: [
          steps,
          ElevatedButton(onPressed: (){
          setState(() {
            steps=stepOne();
          });
          },
           child: const Text("Step One")),
      ]),),)
     );
  }
}