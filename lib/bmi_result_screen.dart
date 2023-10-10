import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BmiResultScreen extends StatelessWidget {
  final double result;
  final int age;
  final bool isMale;

  BmiResultScreen(
      {super.key,
      required this.result,
      required this.age,
      required this.isMale});

  String status = "";
  bool colorType = false;

  @override
  Widget build(BuildContext context) {
    if (result < 18.5) {
      colorType = true;
      status = "UnderWeight";
    } else if (result > 18.5 && result < 25) {
      colorType = true;
      status = "Healthy weight";
    } else if (result >= 25 && result < 30) {
      colorType = false;
      status = "Overweight";
    } else {
      colorType = false;
      status = "Obesity";
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 14, 33, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(26, 31, 56, 20),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Your Result",
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 400.0,
              width: 300.0,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(26, 31, 56, 20),
                shape: BoxShape.rectangle,
                border: Border.all(width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Your Gender is: ${isMale ? "Male" : "FeMale"}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Your Age is: $age",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Your Result is: ${result.round()}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Your status weight is:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    status,
                    style: TextStyle(
                      color: colorType ? Colors.green : Colors.red,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
