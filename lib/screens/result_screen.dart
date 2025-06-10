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
    double heightInMeters = height / 100;
    double imcResult = weight / (heightInMeters * heightInMeters);
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultados", style: TextStyle(color: AppColors.textLight)),
        backgroundColor: AppColors.primary,
        iconTheme: IconThemeData(color: AppColors.textLight),
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [AppColors.selected, AppColors.secondary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  getTitleByImc(imcResult),
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: getColorByImc(imcResult),
                  ),
                ),

                Text(
                  imcResult.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textLight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    getDescriptionByImc(imcResult),
                    style: TextStyle(fontSize: 26, color: AppColors.textLight),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Color de fondo
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Finalizar",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color getColorByImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => AppColors.accent,
      < 24.9 => Colors.green,
      < 29.9 => AppColors.primary,
      _ => Colors.white,
    };
  }

  String getTitleByImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => "Imc bajo",
      < 24.9 => "Imc Normal",
      < 29.9 => "Imc alto",
      _ => "Obesidad",
    };
  }

  String getDescriptionByImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => "Tu Imc esta por debajo de lo recomendado",
      < 24.9 => "Tu Imc esta dentro del rango normal",
      < 29.9 => "Tu Imc esta por encima de lo recomendado",
      _ => "Tu Imc indica obesidad,consulta a un profesional de la salud",
    };
  }
}
