import 'package:flutter/material.dart';

class StepTwo extends StatefulWidget {
  const StepTwo({Key? key});

  @override
  State<StepTwo> createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  List<String> images = [
    "images/ieee.png",
    "images/tsyp.jpg",
    "images/ias.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100,),
        Text(
          "CAS CHALLENGE",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        Text("TRASH BIN"),
        SizedBox(height: 100),
        Container(
          height: 300,
          child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
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
