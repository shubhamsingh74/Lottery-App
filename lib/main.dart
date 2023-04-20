import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Lottery App',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            textAlign: TextAlign.end,
          )),
          backgroundColor: Colors.red.shade500,
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 350,
            color: Colors.transparent,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lucky Lottery Number is 5',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: x == 5
                          ? Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                  size: 50,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'You won the lottery Dear,,\n Your Number is  $x',
                                  style: const TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                const Icon(
                                  Icons.error_outline,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Better Luck Next Time Dear,\n Your Number is $x ',
                                  style: const TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.refresh,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {
            setState(() {
              x = (random.nextInt(6));
              print(x);
            });
          },
        ),
      ),
    );
  }
}
