
import 'package:argedor_task/app/ui/screens/tabbar_trend/tabbar_trend_screen.dart';
import 'package:flutter/material.dart';

class TabbarWIdget extends StatelessWidget {
  const TabbarWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black, width: 1))),
          child: const TabBarView(children: <Widget>[
            TabbarTrendScreen(),
            Center(
                child: Text(
              'Technicals Screen',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
            Center(
              child: Text('Transaction Screen', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
          ])),
    );
  }
}
