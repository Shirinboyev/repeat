import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
int scale = 75;
bool val = false;
bool cal = false;
bool dal = false;
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            color: Colors.white,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/pizza.png'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: val,
                      onChanged: (value) {
                        setState(() {
                          val = !val;
                          if (val) {
                            scale += 5;
                          } else
                            scale -= 5;
                        });
                      },
                      side: BorderSide(color: Colors.black),
                      activeColor: Colors.blue,
                      // autofocus: true,
                    ),
                    Text('Extra Chesse '),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: cal,
                      onChanged: (value) {
                        setState(() {
                          cal = !cal;
                          if (cal) {
                            scale += 5;
                          } else
                            scale -= 5;
                        });
                      },
                      side: BorderSide(color: Colors.black),
                      activeColor: Colors.blue,
                      // autofocus: true,
                    ), 
                    Text('Onions            '),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: dal,
                      onChanged: (value) {
                        setState(() {
                          dal = !dal;
                          if (dal) {
                            scale += 5;
                          } else
                            scale -= 5;
                        });
                      },
                      side: BorderSide(color: Colors.black),
                      activeColor: Colors.blue,
                      // autofocus: true,
                    ),
                    Text('Chicken          '),
                  ],
                ),
                Text(
                  'Total sum:  $scale so\'m',
                  style: TextStyle(
                      fontWeight: FontWeight.w900, fontSize: 20, height: 6),
                )
              ],
            ))),
      ),
    );
  }
}