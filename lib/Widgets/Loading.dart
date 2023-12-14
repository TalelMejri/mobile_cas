

import "package:flutter/material.dart";

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<StatefulWidget> createState() =>_LoadingState();
}

class _LoadingState extends State<Loading>  {
  
  @override
  Widget build(BuildContext context) {
    return
     const Scaffold(
      body:   Center(
        child: Image(
          image: AssetImage("images/ieee.png"),
          width: 200,
          height: 200,
        ),
      ),
     );
  }
}