import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

class PiChartWidget extends StatelessWidget {
  const PiChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        PieChart(
          dataMap: dataMap,
          animationDuration: const Duration(milliseconds: 800),

          chartRadius: Get.width * 0.6,
          colorList: _colorList,
          //gradientList: gradientList,
          initialAngleInDegree: 0,
          chartType: ChartType.ring,
          ringStrokeWidth: 32,
          legendOptions: const LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.right,
            showLegends: false,
            legendShape: BoxShape.circle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: false,
            showChartValuesInPercentage: false,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
        ),
        const Positioned(
          child: Image(
            image: AssetImage('assets/tap-icon.png'),
            height: 70,
            width: 70,
          ),
        )
      ],
    );
  }
}

Map<String, double> dataMap = {
  "Flutter": 5,
  "React": 3,
  "Xamarin": 2,
  "Ionic": 2,
};

List<CupertinoDynamicColor> _colorList = [
  CupertinoColors.systemRed,
  CupertinoColors.systemGreen,
  CupertinoColors.systemBlue,
  CupertinoColors.systemYellow,
];
