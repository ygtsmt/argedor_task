import 'package:argedor_task/app/ui/widgets/tabbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
          TabBar(
            tabs: [
              Tab(text: 'Trend'),
              Tab(text: 'Technicals'),
              Tab(text: 'Transaction'),
            ],
          ),
          TabbarWIdget()
        ]));
  }
}
