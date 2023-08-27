import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_navigator_state.dart';

class HomeNavigatorCubit extends Cubit<HomeNavigatorState> {
  HomeNavigatorCubit() : super(const HomeNavigatorState.initial());

  selectPage(ActivePage choice) {
    emit(HomeNavigatorState(activePage: choice));
  }
}
