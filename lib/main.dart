import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/provider/HeightProvider.dart';
import 'package:imc_calculator/provider/WeightProvider.dart';
import 'package:imc_calculator/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Weightprovider()),
        ChangeNotifierProvider(create: (_) => Heightprovider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textLight,
          title: Text("Imc Calculator"),
        ),
        backgroundColor: AppColors.background,
        body: Center(child: HomeScreen()),
      ),
    );
  }
}
