// lib/text_styles.dart
import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class AppTextStyles {
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    letterSpacing: 1.2,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textLight,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    color: AppColors.textMuted,
  );
}
