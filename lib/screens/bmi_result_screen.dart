import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  bool? isMale;
  var result;
  var age;

  BmiResultScreen({
    required this.age,
    required this.isMale,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
          ),
        ),
        title: const Text(
          "BMI RESULT",
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " GENDER  = ${isMale! ? "Male" : "Female"} ",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "RESULT = ${result.round()}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "AGE = $age",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
