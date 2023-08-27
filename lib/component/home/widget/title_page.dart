import 'package:flutter/material.dart';
import 'package:logist/utils/color_sour_app.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Відправлення',
        style: TextStyle(
            color: ColorSourApp.white,
            fontSize: 32,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
