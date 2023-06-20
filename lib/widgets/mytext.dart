import 'package:flutter/material.dart';

import '../const/xfonts.dart';

class MyTextRegular extends StatelessWidget {
  String teks;
  double size;
  Color? warna;
  TextAlign? align;
  MyTextRegular({
    Key? key,
    this.warna,
    this.align,
    required this.size,
    required this.teks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      style: TextStyle(
        fontFamily: MyFont.regular,
        fontSize: size,
        color: warna ?? Colors.white,
      ),
      textAlign: align ?? TextAlign.left,
    );
  }
}

class MyTextSemiBold extends StatelessWidget {
  String teks;
  double size;
  Color? warna;
  MyTextSemiBold({
    Key? key,
    this.warna,
    required this.size,
    required this.teks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      style: TextStyle(
          fontFamily: MyFont.semiBold,
          fontSize: size,
          color: warna ?? Colors.white),
    );
  }
}

class MyTextBold extends StatelessWidget {
  String teks;
  double size;
  Color? warna;
  MyTextBold({
    Key? key,
    this.warna,
    required this.size,
    required this.teks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      style: TextStyle(
          fontFamily: MyFont.bold,
          fontSize: size,
          color: warna ?? Colors.white),
    );
  }
}
