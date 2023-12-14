import 'package:flutter/material.dart';
import 'package:mobile_cas/Screens/Dashboard.dart';
import 'package:mobile_cas/Screens/Steps/StepFour.dart';
import 'package:mobile_cas/Screens/Steps/StepOne.dart';
import 'package:mobile_cas/Screens/Steps/StepThree.dart';
import 'package:mobile_cas/Screens/Steps/StepTwo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Widget steps = const StepOne();

  int compt=1;

  @override
  void initState() {
    super.initState();
    if(compt==1){
      steps = const StepOne();
    }else if(compt==2){
      steps = const StepTwo();
    }else if(compt==3){
     steps= const StepThree();
    }else if(compt==4){
     steps= const StepFour();
    }
  }

  void NextStep(){
    setState(() {
      if(compt==1){
        steps = const StepTwo();
        compt++;
      }else if(compt==2){
        steps = const StepThree();
        compt++;
      }else if(compt==3){
        steps= const StepFour();
        compt++;
      }else if(compt==4){
        steps= const StepOne();
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Dashboard()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:Padding(
              padding: const EdgeInsets.all(2),
              child: steps
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: NextStep, child: const Icon(Icons.arrow_forward_ios)),
     );
  }
}