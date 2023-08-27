part of 'tab_filter_cubit.dart';

enum CurrentFilterItem { active, received, all }

class TabFilterState {
  final CurrentFilterItem currentFilterItem;
  final double width;
  final double left;
  final int position;

  const TabFilterState(
      {required this.currentFilterItem,
      required this.width,
      required this.left,
      required this.position});

  const TabFilterState.initial({required this.width})
      : currentFilterItem = CurrentFilterItem.active,
        left = 0,
        position = 0;

  @override
  List<Object> get props => [
        currentFilterItem,
        width,
        left,
        position,
      ];
}
