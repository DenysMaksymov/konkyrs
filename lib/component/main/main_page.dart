import 'package:flutter/material.dart';
import 'package:logist/component/home/home_page.dart';
import 'package:logist/component/main/widget/navigation_bar_app.dart';
import 'package:logist/component/parcel/parcel_page.dart';
import 'package:logist/component/profile/profile_page.dart';
import 'package:logist/component/search/search_page.dart';
import 'package:logist/utils/color_sour_app.dart';
import 'cubit/home_navigator_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeNavigatorCubit>(
      create: (context) => HomeNavigatorCubit(),
      child: BlocBuilder<HomeNavigatorCubit, HomeNavigatorState>(
        builder: (context, state) {
          return Scaffold(
              backgroundColor: ColorSourApp.background,
              body: Stack(
                children: [
                  if (state.activePage == ActivePage.home) const HomePage(),
                  if (state.activePage == ActivePage.parcel) ParcelPage(),
                  if (state.activePage == ActivePage.search) const SearchPage(),
                  if (state.activePage == ActivePage.profile)
                    const ProfilePage(),
                  const Positioned(
                      left: 0, right: 0, bottom: 0, child: NavigationBarApp())
                ],
              ));
        },
      ),
    );
  }
}
