import 'dart:math';

import 'package:bmicalculator/result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int agecounter = 18;
  int weightcounter = 40;
  double _height = 150;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 15, 31),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: const Color.fromARGB(255, 12, 15, 31),
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => isMale = true),
                    child: Container(
                      width: 100,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: 200,
                      decoration: BoxDecoration(
                        color: isMale
                            ? Colors.pink
                            : const Color.fromARGB(255, 27, 26, 46),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => isMale = false),
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                        color: isMale
                            ? const Color.fromARGB(255, 27, 26, 46)
                            : Colors.pink,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('FEMALE', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 27, 26, 46),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('HEIGHT', style: TextStyle(color: Colors.grey)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _height.toStringAsFixed(0),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Slider(
                      thumbColor: Colors.pink,
                      value: _height,
                      onChanged: (newValue) {
                        setState(() {
                          _height = newValue;
                        });
                      },
                      min: 80,
                      max: 220,
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 27, 26, 46),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('WEIGHT',
                              style: TextStyle(color: Colors.grey)),
                          Text('$weightcounter',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 68, 69, 84),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (weightcounter > 0) {
                                          weightcounter--;
                                        }
                                      });
                                    },
                                    icon: const Icon(Icons.remove,
                                        color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 68, 69, 84),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weightcounter++;
                                      });
                                    },
                                    icon: const Icon(Icons.add,
                                        color: Colors.white),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 27, 26, 46),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AGE',
                              style: TextStyle(color: Colors.grey)),
                          Text('$agecounter',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 68, 69, 84),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (agecounter > 0) {
                                          agecounter--;
                                        }
                                      });
                                    },
                                    icon: const Icon(Icons.remove,
                                        color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 68, 69, 84),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        agecounter++;
                                      });
                                    },
                                    icon: const Icon(Icons.add,
                                        color: Colors.white),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              double result = weightcounter / pow(_height.round() / 100, 2);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(
                            result: result,
                            age: agecounter,
                            isMale: isMale,
                            height: _height,
                            weight: weightcounter,
                          )));
            },
            color: Colors.pink,
            minWidth: double.infinity,
            height: 50,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const Text(
              'CALCULATE',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
