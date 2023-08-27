part of 'list_card_cubit.dart';

class ListCardState {
  final List<Post> postList;

  const ListCardState({
    required this.postList,
  });

  ListCardState.initial() : postList = [];

  @override
  List<Object> get props => [
        postList,
      ];
}
