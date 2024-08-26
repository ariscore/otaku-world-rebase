import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2C3E50),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SfCartesianChart(
              plotAreaBorderWidth: 0, // Remove chart border
              primaryXAxis: CategoryAxis(
                majorGridLines: MajorGridLines(width: 0),
                // Remove vertical grid lines
                axisLine: AxisLine(width: 0),
                // Remove x-axis line
                majorTickLines: MajorTickLines(size: 0),
                // Remove tick marks
                labelStyle: TextStyle(color: Colors.white), // Set label style
              ),
              primaryYAxis: NumericAxis(
                isVisible: false, // Hide y-axis line and labels
                majorGridLines:
                    MajorGridLines(width: 0), // Remove horizontal grid lines
              ),
              series: <ColumnSeries<ChartData, String>>[
                ColumnSeries<ChartData, String>(
                  dataSource: getChartData(),
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  width: 0.5,
                  borderWidth: 0,
                  // Ensure no border around the bars
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    labelAlignment: ChartDataLabelAlignment.outer,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<ChartData> getChartData() {
    return [
      ChartData('10', 23),
      ChartData('20', 14),
      ChartData('30', 5),
      ChartData('40', 20),
      ChartData('50', 15),
      ChartData('60', 10),
      ChartData('70', 15),
      ChartData('80', 14),
      ChartData('90', 23),
      ChartData('100', 20),
    ];
  }
}

class ChartData {
  final String x;
  final double y;

  ChartData(this.x, this.y);
}
