
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logist/component/main/cubit/home_navigator_cubit.dart';
import 'package:logist/utils/color_sour_app.dart';
import 'package:logist/utils/icon_sours.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeNavigatorCubit, HomeNavigatorState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(top: 12, bottom: 31),
          decoration: BoxDecoration(
              color: ColorSourApp.black,
              border: Border(
                  top: BorderSide(
                      width: 1, color: ColorSourApp.white.withOpacity(.15)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavigationBarItem(
                title: 'Головна',
                iconSours: IconSours.homeIcon,
                isSelect: state.isHome,
                onTap: () => context
                    .read<HomeNavigatorCubit>()
                    .selectPage(ActivePage.home),
              ),
              _NavigationBarItem(
                title: 'Посилки',
                iconSours: IconSours.parcelIcon,
                isSelect: state.isParcel,
                onTap: () => context
                    .read<HomeNavigatorCubit>()
                    .selectPage(ActivePage.parcel),
              ),
              _NavigationBarItem(
                title: 'Пошук',
                iconSours: IconSours.searchIcon,
                isSelect: state.isSearch,
                onTap: () => context
                    .read<HomeNavigatorCubit>()
                    .selectPage(ActivePage.search),
              ),
              _NavigationBarItem(
                title: 'Профайл',
                iconSours: IconSours.profileIcon,
                isSelect: state.isProfile,
                onTap: () => context
                    .read<HomeNavigatorCubit>()
                    .selectPage(ActivePage.profile),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  final String title;
  final String iconSours;
  final bool isSelect;
  final Function onTap;

  const _NavigationBarItem({
    super.key,
    required this.title,
    required this.iconSours,
    required this.isSelect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          SvgPicture.asset(iconSours,
              width: 24,
              height: 24,
              color: isSelect ? ColorSourApp.white : ColorSourApp.grey),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
                color: isSelect ? ColorSourApp.white : ColorSourApp.grey),
          )
        ],
      ),
    );
  }
}
