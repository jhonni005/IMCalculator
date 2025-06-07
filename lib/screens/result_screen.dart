import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class ResultScreen extends StatelessWidget {
  final String genero;
  final double height;
  final int weight;
  final int age;
  const ResultScreen({
    super.key,
    required this.height,
    required this.weight,
    required this.age,
    required this.genero,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultados")),
      backgroundColor: AppColors.background,
      body: Center(child: Column(children: [
          
],)),
    );
  }
}
