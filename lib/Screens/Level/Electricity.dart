import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class Electricity extends StatefulWidget {
  const Electricity({super.key});

  @override
  State<Electricity> createState() => _ElectricityState();
}

class _ElectricityState extends State<Electricity> {
Map<String, double> dataMap = {
    "Empty": 2,
    "Electricity":5
  };
 List<Color> colorList = [
    Colors.blue, 
    Colors.green, 
  ];
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
            colorList: colorList,
          ),
        ),
      ),
    );
  }
}