import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logist/model/post.dart';
import 'package:logist/utils/format.dart';

class FireStoreService {
  final fireStore = FirebaseFirestore.instance;

  getPostList() async {
    final data = await fireStore.collection('postList').get();
    return data.docs.map((e) => e.data()).toList();
  }

  createPost(Post post) async {
    // Post post = Post.fromJson({
    //   "dataCreate": '',
    //   "tags": ['all', 'new'],
    //   "id": 0,
    //   "data": {
    //     "dataStartDelivery":
    //         FormatApp.formatterDataToSave.format(DateTime.now()),
    //     "dataEndDelivery": FormatApp.formatterDataToSave.format(DateTime.now()),
    //     "fromCountry": "Великобританія",
    //     "progressStep": 2,
    //     "toCountry": "Україна",
    //     "companyName": "Logistic group",
    //     "fromCity": "Лондон",
    //     "title": "Технічне спорядження",
    //     "toCity": "Житомир",
    //     "costDelivery": 10000
    //   }
    // });

    fireStore.collection('postList').doc().set(post.toJson());
  }
}
