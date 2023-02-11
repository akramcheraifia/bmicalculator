import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.result,
      required this.age,
      required this.weight,
      required this.height,
      required this.isMale});

  final double result;
  final bool isMale;
  final int age;
  final int weight;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 15, 31),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: const Color.fromARGB(255, 12, 15, 31),
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your BMI: ${result.toStringAsFixed(1)} ',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text('Age: $age yo',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text('Gender : ${isMale ? 'male' : 'female'}',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text('weight: $weight Kg',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text('height: ${height.round()} Cm',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
