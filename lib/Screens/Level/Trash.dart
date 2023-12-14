import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {

@override
  Widget build(BuildContext context) {
    return  Container(
  child: Echarts(
  option: '''
    {
      xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
      },
      yAxis: {
        type: 'value'
      },
      series: [{
        data: [820, 932, 901, 934, 1290, 1330, 1320],
        type: 'line'
      }]
    }
  ''',
  ),
  width: 300,
  height: 250,
);
  }
}