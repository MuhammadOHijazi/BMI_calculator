import 'dart:math';

import 'package:bmicalc/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({super.key});

  @override
  State<BmiCalculatorScreen> createState() => BmiCalculatorScreenState();
}

class BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  int weight = 60;
  int age = 25;
  double height = 150;
  bool isMale = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 14, 33, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(26, 31, 56, 20),
        title: const Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  height: 130.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    color: isMale
                        ? Colors.white
                        : const Color.fromRGBO(26, 31, 56, 20),
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        size: 75,
                        Icons.male,
                        color: isMale
                            ? const Color.fromRGBO(26, 31, 56, 20)
                            : Colors.white,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "MALE",
                        style: TextStyle(
                          color: isMale
                              ? const Color.fromRGBO(26, 31, 56, 20)
                              : Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  setState(() {
                    isMale = true;
                  });
                },
              ),
              const SizedBox(
                width: 50.0,
                height: 20.0,
              ),
              GestureDetector(
                child: Container(
                  height: 130.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    color: isMale
                        ? const Color.fromRGBO(26, 31, 56, 20)
                        : Colors.white,
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        size: 75,
                        Icons.female,
                        color: isMale
                            ? Colors.white
                            : const Color.fromRGBO(26, 31, 56, 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "FEMALE",
                        style: TextStyle(
                          color: isMale
                              ? Colors.white
                              : const Color.fromRGBO(26, 31, 56, 20),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  setState(() {
                    isMale = false;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 175.0,
                width: 275.0,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(26, 31, 56, 20),
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HIEGHT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "CM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "${height.round()}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Slider(
                        activeColor: Colors.white,
                        inactiveColor: const Color.fromRGBO(10, 14, 33, 1),
                        value: height,
                        min: 140,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                          print(value);
                        }),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 75.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150.0,
                width: 125.0,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(26, 31, 56, 20),
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "WEIGHT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "$weight",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.white,
                            size: 30,
                            //color: Color.fromRGBO(10, 14, 33, 1),
                          ),
                          onPressed: () {
                            setState(() {
                              weight -= 1;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.white,
                            size: 30,
                            //color: Color.fromRGBO(10, 14, 33, 1),
                          ),
                          onPressed: () {
                            setState(() {
                              weight += 1;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 50.0,
                height: 20.0,
              ),
              Container(
                height: 150.0,
                width: 125.0,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(26, 31, 56, 20),
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "AGE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "$age",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: const Icon(
                              Icons.remove_circle,
                              color: Colors.white,
                              size: 30,
                              //color: Color.fromRGBO(10, 14, 33, 1),
                            ),
                            onPressed: () {
                              setState(() {
                                age -= 1;
                              });
                            }),
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              age += 1;
                            });
                          },
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.white,
                            size: 30,
                            //color: Color.fromRGBO(10, 14, 33, 1),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(241, 6, 6, 1),
                shape: BoxShape.rectangle,
                border: Border.all(width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: MaterialButton(
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                onPressed: () {
                  final dynamic result = weight / pow(height / 100, 2);

                  print("The result is ${result.round}");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiResultScreen(
                        result: result,
                        age: age,
                        isMale: isMale,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
