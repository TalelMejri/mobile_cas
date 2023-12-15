import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class Methane extends StatefulWidget {
  const Methane({super.key});

  @override
  State<Methane> createState() => _MethaneState();
}

class _MethaneState extends State<Methane> {
  
Map<String, double> dataMap = {
    "Empty": 5,
    "Methane":4
  };

@override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Container(
        child: Center(
          child: PieChart(
            dataMap: dataMap,
            chartRadius: MediaQuery.of(context).size.width / 1.7,
            legendOptions: LegendOptions(
              legendPosition: LegendPosition.bottom,
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValuesInPercentage: true,
            ),
          ),
        ),
      ),
    );
  }
}