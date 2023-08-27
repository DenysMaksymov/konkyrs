
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logist/utils/color_sour_app.dart';
import 'package:logist/utils/icon_sours.dart';

class LgAppBar extends StatelessWidget {
  const LgAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          const Text('Понеділок, 31 липня',
              style: TextStyle(
                  color: ColorSourApp.grey, fontWeight: FontWeight.w500)),
          const Spacer(),
          SvgPicture.asset(IconSours.notification, width: 24, height: 24),
          const SizedBox(width: 12),
          SvgPicture.asset(IconSours.settings, width: 20, height: 20),
        ],
      ),
    );
  }
}
