import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logist/component/home/widget/card_list/card_item.dart';

import 'cubit/list_card_cubit.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ListCardCubit>(
      create: (context) => ListCardCubit()..init(),
      child: BlocBuilder<ListCardCubit, ListCardState>(
        builder: (context, state) {
          print(state.postList.length);
          return Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...state.postList.map((e) => CardItem(
                        post: e,
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
