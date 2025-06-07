import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class HeightSelector extends StatefulWidget {
  final double height;
  final ValueChanged<double> onChanged;
  const HeightSelector({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 150;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text("Altura", style: TextStyle(color: Colors.white)),
            Text(
              "${widget.height.toInt()} cm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              value: widget.height,
              onChanged: widget.onChanged,
              activeColor: Colors.orange,
              max: 220,
              min: 150,
              label: widget.height.round().toString(),
              divisions: 120,
            ),
          ],
        ),
      ),
    );
  }
}
