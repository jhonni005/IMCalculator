import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class ValueSelector extends StatefulWidget {
  final String title;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ValueSelector({
    super.key,
    required this.title,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  State<ValueSelector> createState() => _ValueSelectorState();
}

class _ValueSelectorState extends State<ValueSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(widget.title, style: TextStyle(color: Colors.white)),
              Text(
                widget.value.toString(),
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.selected,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: widget.onDecrement,
                      icon: Icon(Icons.remove),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.selected,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: widget.onIncrement,
                      icon: Icon(Icons.add),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
