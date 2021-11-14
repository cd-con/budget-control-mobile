import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';

class SpendInMonth {
  final String monthName;
  final double moneySpent;
  final String currency;

  SpendInMonth(this.monthName, this.moneySpent, this.currency);
}

class StatsPage extends StatefulWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StatsContainer();
}

var debugData = [
  SpendInMonth("Январь", 300, "bucks")
];

class StatsContainer extends State<StatsPage>{
  @override
  Widget build(BuildContext context) {

    void defineOptionsAndData() {
      var _lineChartOptions = new LineChartOptions();
      var _verticalBarChartOptions = new VerticalBarChartOptions();
      var _chartData = new ChartData();
      _chartData.dataRowsLegends = [
        "Spring",
        "Summer",
        "Fall",
        "Winter"];
      _chartData.dataRows = [
        [10.0, 20.0,  5.0,  30.0,  5.0,  20.0, ],
        [30.0, 60.0, 16.0, 100.0, 12.0, 120.0, ],
        [25.0, 40.0, 20.0,  80.0, 12.0,  90.0, ],
        [12.0, 30.0, 18.0,  40.0, 10.0,  30.0, ],
      ];
      _chartData.xLabels =  ["Wolf", "Deer", "Owl", "Mouse", "Hawk", "Vole"];
      _chartData.assignDataRowsDefaultColors();
      // Note: ChartOptions.useUserProvidedYLabels default is still used (false);
    }

    return Scaffold(
        body: ListView(children: [
          Card(
            child:
            Column(
              mainAxisSize: MainAxisSize.min,
              children:
              <Widget>[
                const ListTile(
                  leading: Icon(Icons.sync,),
                  title: Text("Ваши расходы за месяц"),
                  subtitle: Text('Синхронизируйте дебет с кредитом'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('Синхронизировать'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]
        ));
  }

}