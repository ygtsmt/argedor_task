import 'package:argedor_task/app/ui/screens/home_screen/home_screen.dart';
import 'package:argedor_task/core/color_constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: const ColorScheme.dark(), useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Column(
            children: [
              const Text('BTC'),
              Text(
                'Global average',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: ColorConstants().subTextColor,
                      fontWeight: FontWeight.w200,
                    ),
              ),
            ],
          ),
          backgroundColor: ColorConstants().mainColor,
          centerTitle: true,
          actions: [
            Row(
              children: [
                const Icon(Icons.notification_add_outlined),
                const SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade300,
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            )
          ],
        ),
        backgroundColor: ColorConstants().mainColor,
        body: const SafeArea(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
