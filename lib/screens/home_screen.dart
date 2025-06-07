import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/value_selector.dart';
import 'package:imc_calculator/screens/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedGender;
  int weight = 60;
  int age = 25;
  double height = 170;

  void updateGender(String newGender) {
    setState(() {
      selectedGender = newGender;
    });
  }

  void updateHeight(double newHeight) {
    setState(() {
      height = newHeight;
    });
  }

  void incrementWeight() {
    setState(() {
      weight++;
    });
  }

  void decrementWeight() {
    setState(() {
      if (weight > 0) weight--;
    });
  }

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  void decrementAge() {
    setState(() {
      if (age > 0) age--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(
          selectedGender: selectedGender,
          onGenderChanged: updateGender,
        ),
        HeightSelector(height: height, onChanged: updateHeight),
        Row(
          children: [
            Expanded(
              child: ValueSelector(
                title: "Peso",
                value: weight,
                onIncrement: incrementWeight,
                onDecrement: decrementWeight,
              ),
            ),
            Expanded(
              child: ValueSelector(
                title: "Edad",
                value: age,
                onIncrement: incrementAge,
                onDecrement: decrementAge,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Color de fondo
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              child: Text(
                "CALCULAR",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ResultScreen(
                          height: height,
                          weight: weight,
                          age: age,
                          genero: "Hombre",
                        ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
