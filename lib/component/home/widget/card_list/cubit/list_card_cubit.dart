import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logist/comfig/preference_key.dart';
import 'package:logist/model/post.dart';
import 'package:logist/repository/preference_repository.dart';
import 'package:logist/service/fire_store_service.dart';

part 'list_card_state.dart';

class ListCardCubit extends Cubit<ListCardState> {
  ListCardCubit() : super(ListCardState.initial());

  PreferenceRepository preferenceRepository = PreferenceRepository();
  FireStoreService fireStoreService = FireStoreService();

  init() async {
    final data = await fireStoreService.getPostList();
    emit(ListCardState(
        postList: [...data.map((element) => Post.fromJson(element))]));
  }
}
