import 'package:argedor_task/app/ui/widgets/trend_text_group.dart';
import 'package:argedor_task/core/color_constants.dart';
import 'package:argedor_task/core/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TabbarTrendScreen extends StatefulWidget {
  const TabbarTrendScreen({
    super.key,
  });

  @override
  State<TabbarTrendScreen> createState() => _TabbarTrendScreenState();
}

class _TabbarTrendScreenState extends State<TabbarTrendScreen> {
  String selectedAverageValue = 'Global average';
  String selectedTimeValue = '1M';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(width: 0.2, color: Colors.white),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              GestureDetector(
                                child: const Icon(Icons.candlestick_chart_rounded),
                                onTap: () {},
                              ),
                              const VerticalDivider(
                                color: Colors.white,
                                thickness: 0.2,
                                width: 16.0,
                              ),
                              GestureDetector(
                                child: const Icon(Icons.show_chart_outlined),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  DropdownButton<String>(
                    underline: Container(),
                    value: selectedTimeValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTimeValue = newValue!;
                      });
                    },
                    items: <String>['1M', '10M', '30M'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('1H'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('1D'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('1W'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.6,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              child: LineChart(
                LineChartData(borderData: FlBorderData(show: false), lineBarsData: [
                  LineChartBarData(spots: Constants().chartData),
                ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '5,350.26 ',
                              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.red),
                            ),
                            TextSpan(
                              text: 'EUR',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '= 6,111.34 USD -5.27%',
                          style: TextStyle(color: ColorConstants().subTextColor),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: DropdownButton<String>(
                        underline: Container(),
                        value: selectedAverageValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedAverageValue = newValue!;
                          });
                        },
                        items: <String>['Global average', 'Option 2', 'Option 3', 'Option 4']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const TrendTextGroup(),
        ],
      ),
    );
  }
}
