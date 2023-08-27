part of 'home_navigator_cubit.dart';

enum ActivePage { home, parcel, search, profile }

class HomeNavigatorState extends Equatable {
  final ActivePage activePage;

  const HomeNavigatorState({required this.activePage});

  const HomeNavigatorState.initial() : activePage = ActivePage.home;

  bool get isHome => activePage == ActivePage.home;

  bool get isParcel => activePage == ActivePage.parcel;

  bool get isSearch => activePage == ActivePage.search;

  bool get isProfile => activePage == ActivePage.profile;

  @override
  List<Object> get props => [activePage];
}
