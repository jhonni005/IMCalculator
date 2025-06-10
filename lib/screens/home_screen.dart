import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/value_selector.dart';
import 'package:imc_calculator/provider/HeightProvider.dart';
import 'package:imc_calculator/provider/WeightProvider.dart';
import 'package:imc_calculator/screens/result_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedGender = "male";
  int age = 25;

  void updateGender(String newGender) {
    setState(() {
      selectedGender = newGender;
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
    final weightPro = context.watch<Weightprovider>().weight;
    final heightPro = context.watch<Heightprovider>().height;
    return Column(
      children: [
        GenderSelector(
          selectedGender: selectedGender,
          onGenderChanged: updateGender,
        ),
        HeightSelector(
          height: heightPro,
          onChanged: context.read<Heightprovider>().setHeight,
        ),
        Row(
          children: [
            Expanded(
              child: ValueSelector(
                title: "WEIGHT",
                value: weightPro,
                onIncrement: context.read<Weightprovider>().increaseWeight,
                onDecrement: context.read<Weightprovider>().decreaseWeight,
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
                print(heightPro);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ResultScreen(
                          height: heightPro,
                          weight: weightPro,
                          age: age,
                          genero: selectedGender,
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
