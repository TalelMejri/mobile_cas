import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class Biogas extends StatefulWidget {
  const Biogas({super.key});

  @override
  State<Biogas> createState() => _BiogasState();
}

class _BiogasState extends State<Biogas> {
Map<String, double> dataMap = {
    "Empty": 1,
    "Biogas":5
  };

   List<Color> colorList = [
    Colors.red, 
    Colors.yellow, 
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