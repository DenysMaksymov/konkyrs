
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logist/component/home/widget/tab_filter/cubit/tab_filter_cubit.dart';
import 'package:logist/utils/color_sour_app.dart';

class TabFilter extends StatelessWidget {
  const TabFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TabFilterCubit>(
      create: (context) => TabFilterCubit(width: 300),
      child: BlocBuilder<TabFilterCubit, TabFilterState>(
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorSourApp.darkGrey),
            child: Stack(
              children: [
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    top: 0,
                    left: ((MediaQuery.of(context).size.width - 32) / 3) *
                        state.position,
                    bottom: 0,
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 32) / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorSourApp.lightOrange),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _FilterText(
                      label: 'Активні',
                      onTap: () => context.read<TabFilterCubit>().left(),
                      isActive: state.position == 0,
                    ),
                    _FilterText(
                      label: 'Отримані',
                      onTap: () => context.read<TabFilterCubit>().center(),
                      isActive: state.position == 1,
                    ),
                    _FilterText(
                      label: 'Всі',
                      onTap: () => context.read<TabFilterCubit>().right(),
                      isActive: state.position == 2,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _FilterText extends StatelessWidget {
  final String label;
  final Function onTap;
  final bool isActive;

  const _FilterText({
    super.key,
    required this.label,
    required this.onTap,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => onTap(),
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              label,
              style: TextStyle(
                color: isActive ? ColorSourApp.black : ColorSourApp.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
