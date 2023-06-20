import 'package:flutter/material.dart';

import '../const/xcolors.dart';
import '../widgets/mytext.dart';

class PrimarySurvey extends StatefulWidget {
  const PrimarySurvey({Key? key}) : super(key: key);

  @override
  State<PrimarySurvey> createState() => _PrimarySurveyState();
}

class _PrimarySurveyState extends State<PrimarySurvey> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: MyTextBold(
        size: 10,
        warna: MyColor.hijau3,
        teks: 'Primary Survey',
      ),
    );
  }
}
