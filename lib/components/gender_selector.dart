import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  final String selectedGender;
  ValueChanged<String> onGenderChanged;
  GenderSelector({
    super.key,
    required this.onGenderChanged,
    required this.selectedGender,
  });

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              widget.onGenderChanged("male");
            },

            child: Container(
              decoration: BoxDecoration(
                color:
                    widget.selectedGender == "male"
                        ? AppColors.selected
                        : AppColors.backgroundComponent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset("assets/images/male.png", height: 150),
                    SizedBox(height: 8),
                    Text("Male", style: AppTextStyles.bodyText),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onGenderChanged("female");
            },
            child: Container(
              decoration: BoxDecoration(
                color:
                    widget.selectedGender == "female"
                        ? AppColors.selected
                        : AppColors.backgroundComponent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset("assets/images/female.png", height: 150),
                    SizedBox(height: 8),
                    Text("Female", style: AppTextStyles.bodyText),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
