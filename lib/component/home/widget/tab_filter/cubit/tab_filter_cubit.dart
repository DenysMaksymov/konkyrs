import 'dart:ui';

import 'package:bloc/bloc.dart';

part 'tab_filter_state.dart';

class TabFilterCubit extends Cubit<TabFilterState> {
  final double width;

  TabFilterCubit({required this.width})
      : super(TabFilterState.initial(width: width));

  left() {
    emit(TabFilterState(
        currentFilterItem: CurrentFilterItem.active, width: width, left: 0, position: 0));
  }

  center() {
    emit(TabFilterState(
        currentFilterItem: CurrentFilterItem.received,
        width: width,
        left: width / 3,position: 1));
  }

  right() {
    emit(TabFilterState(
        currentFilterItem: CurrentFilterItem.all,
        width: width,
        left: width / 3 * 2,position: 2));
  }
}
