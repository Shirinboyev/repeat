import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

double scale = 00.000;
bool val = false;
bool cal = false;
bool den = false;
bool bal = false;
bool dal = false;
bool sal = false;

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
                    Text('Foods',style: TextStyle(fontSize: 35,color: Colors.blue),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: val,
                      onChanged: (value) {
                        setState(() {
                          val = !val;
                          if (val) {
                            scale += 65;
                          } else
                            scale -= 65;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      'Pizza chicken      ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                Image.asset('images/pizza.png',scale: 2.5,),
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
                            scale += 25;
                          } else
                            scale -= 25;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      'Burger        ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                Image.asset('images/burger.png',scale:9.8 ,),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: cal,
                      onChanged: (value) {
                        setState(() {
                          cal = !cal;
                          if (cal) {
                            scale += 30;
                          } else
                            scale -= 30;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      'Palov                   ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                Image.asset('images/palov.png',scale: 4,),
                  ],
                ),Text('Drinks',style: TextStyle(fontSize: 35,color: Colors.blue),), Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: sal,
                      onChanged: (value) {
                        setState(() {
                          sal = !sal;
                          if (sal) {
                            scale += 10;
                          } else
                            scale -= 10;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      'Pepsi                           ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                Image.asset('images/pepsi.png',scale: 14,),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: bal,
                      onChanged: (value) {
                        setState(() {
                          bal = !bal;
                          if (bal) {
                            scale += 11;
                          } else
                            scale -= 11;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      'Fanta                           ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                Image.asset('images/fanta.png',scale: 3,),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: den,
                      onChanged: (value) {
                        setState(() {
                          den = !den;
                          if (den) {
                            scale += 12;
                          } else
                            scale -= 12;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      'Coca-Cola               ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                Image.asset('images/cola.png',scale: 2.7,),
                  ],
                ),
                Text(
                  'Total sum:  $scale so\'m',
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 30, height: 6),
                )
              ],
            ))),
      ),
    );
  }
}
