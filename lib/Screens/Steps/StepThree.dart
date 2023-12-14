import 'package:flutter/material.dart';

class StepThree extends StatefulWidget {
  const StepThree({super.key});

  @override
  State<StepThree> createState() => _StepThreeState();
}

class _StepThreeState extends State<StepThree> {

   List<String> images = [
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
  ];

@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100,),
        Text(
          "Solution",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        Text("Our project is a smart bin that allows us to  produce  electricity,"),
         Text("Biogas and natural fertilizers."),
        SizedBox(height: 100),
        Container(
          height: 500, 
          child: ListView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              var image = images[index];
              return Image.asset(image, width: 300);
            },
          ),
        ),
      ],
    );
  }
}