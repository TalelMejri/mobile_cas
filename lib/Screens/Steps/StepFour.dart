import 'package:flutter/material.dart';

class StepFour extends StatefulWidget {
  const StepFour({super.key});

  @override
  State<StepFour> createState() => _StepFourState();
}

class _StepFourState extends State<StepFour> {

  List<String> images = [
    "images/benif3.png",
    "images/benif2.png",
    "images/benif1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100,),
        Text(
          "Benifits of CAS Challenge",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 100),
        Container(
          height: 300,
          child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var image = images[index];
              return Image.asset(image, width: 200);
            },
          ),
        ),
      ],
    );
  }
}