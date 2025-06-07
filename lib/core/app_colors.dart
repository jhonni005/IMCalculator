import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFB71C1C); // Rojo fuerte
  static const Color secondary = Color.fromARGB(
    255,
    50,
    50,
    50,
  ); // Negro grisáceo
  static const Color background = Color(0xFF121212); // Fondo oscuro
  static const Color backgroundComponent = Color(
    0xFF2C2C2C,
  ); // Un poco más claro
  static const Color accent = Color(0xFFFFC107); // Ámbar
  static const Color textLight = Color(0xFFFFFFFF); // Blanco
  static const Color textDark = Color(0xFF000000); // Negro

  // Estados seleccionables
  static const Color selected = Color(0xFFFFA726); // Naranja más claro para ON
  static const Color unselected = Color(0xFF757575); // Gris medio para OFF

  // Texto
  static const Color textMuted = Color(
    0xFFB0BEC5,
  ); // Texto gris azulado (secundario)
  static const Color textDisabled = Color(0xFF616161); // Texto deshabilitado
  static const Color textInverse = Color(
    0xFF000000,
  ); // Texto oscuro sobre fondo claro
}
