
import 'package:flutter/material.dart';
import 'package:logist/component/home/widget/card_list/card_list.dart';
import 'package:logist/component/home/widget/tab_filter/tab_filter.dart';
import 'package:logist/component/home/widget/title_page.dart';
import 'package:logist/component/widget/lg_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        LgAppBar(),
        TitlePage(),
        SizedBox(height: 26),
        TabFilter(),
        SizedBox(height: 26),
        CardList()
      ],
    );
  }
}
