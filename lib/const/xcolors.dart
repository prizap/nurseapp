import 'package:flutter/material.dart';

import 'xfonts.dart';

class MyColor {
  MyColor._();

  static final ThemeData theme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: MyColor.green,
      onSurface: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: MyColor.green,
      foregroundColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: MyFont.semiBold,
        fontSize: 16,
        color: Colors.black,
      ),
    ),
    fontFamily: "Poppins-Regular",
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontFamily: "Poppins-SemiBold",
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontFamily: "Poppins-SemiBold",
      ),
      displayLarge: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontFamily: "Poppins-Bold",
      ),
      displayMedium: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontFamily: "Poppins-SemiBold",
      ),
      displaySmall: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontFamily: "Poppins-SemiBold",
      ),
      headlineMedium: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontFamily: "Poppins-SemiBold",
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontFamily: "Poppins-Regular",
      ),
      titleLarge: TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontFamily: "Poppins-Regular",
      ),
    ),
  );

  static const Color green = Color(0xFF2C6E49);
  static const Color green2 = Color.fromARGB(255, 196, 211, 163);
  static const Color grey = Color(0xFFECECEC);
  static const Color yellow = Color.fromARGB(255, 251, 203, 18);

  static const Color bg = Color.fromRGBO(241, 249, 255, 1.000);
  static const Color kuning1 = Color.fromRGBO(255, 250, 144, 1.000);
  static const Color ungu1 = Color.fromRGBO(176, 119, 186, 1.000);
  static const Color hijau1 = Color.fromRGBO(164, 255, 170, 1.000);
  static const Color hijau2 = Color.fromRGBO(20, 150, 127, 1.000);
  static const Color hijau3 = Color.fromRGBO(9, 93, 126, 1.000);
  static const Color biru1 = Color.fromRGBO(166, 203, 255, 1.000);
  static const Color merah1 = Color.fromRGBO(255, 144, 144, 1.000);
}
