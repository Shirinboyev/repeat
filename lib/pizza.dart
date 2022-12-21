
import 'package:flutter/material.dart';
import 'package:repeat/pizza.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

bool val = false;
bool cal = false;
int ss = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Pizza menu')),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: val,
                    onChanged: (a) {
                      val = !val;
                      setState(() {
                        ss++;
                      });
                    }),
                Text('Somsa'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: cal,
                    onChanged: (a) {
                      cal = !cal;
                      setState(() {
                        ss++;
                      });
                    }),
                Text('Manti'),
              ],
            ),
            Text('click$ss')
          ],
        ),
      ),
    );
  }
}
