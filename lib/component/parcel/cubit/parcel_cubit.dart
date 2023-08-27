import 'package:bloc/bloc.dart';
import 'package:logist/model/post.dart';
import 'package:logist/service/fire_store_service.dart';

part 'parcel_state.dart';

class ParcelCubit extends Cubit<ParcelState> {
  ParcelCubit() : super(ParcelState.initial());

  FireStoreService fireStoreService = FireStoreService();

  setTags(List<String> tags) {
    emit(ParcelState(
      tags: [...state.tags, ...tags],
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));

    print(['state.tags=======>', state.tags]);
  }

  setDataStartDelivery(String dataStartDelivery) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setDataEndDelivery(String dataEndDeliver) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: dataEndDeliver,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setFromCountry(String fromCountry) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setToCountry(String toCountry) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setCompanyName(String companyName) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setFromCity(String fromCity) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setTitle(String title) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setToCity(String city) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: city,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setProgressStep(int progressStep) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: progressStep,
      costDelivery: state.costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setCostDelivery(int costDelivery) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: costDelivery,
      dataCreate: state.dataCreate,
    ));
  }

  setDataCreate(String dataCreate) {
    emit(ParcelState(
      tags: state.tags,
      dataStartDelivery: state.dataStartDelivery,
      dataEndDelivery: state.dataEndDelivery,
      fromCountry: state.fromCountry,
      toCountry: state.toCountry,
      companyName: state.companyName,
      fromCity: state.fromCity,
      title: state.title,
      toCity: state.toCity,
      progressStep: state.progressStep,
      costDelivery: state.costDelivery,
      dataCreate: dataCreate,
    ));
  }

  savePost() async {
    Post post = Post(
        dataCreate: state.dataCreate,
        tags: state.tags,
        id: 0,
        data: Data(
          dataStartDelivery: state.dataStartDelivery,
          dataEndDelivery: state.dataEndDelivery,
          fromCountry: state.fromCountry,
          progressStep: state.progressStep,
          toCountry: state.toCountry,
          companyName: state.companyName,
          fromCity: state.fromCity,
          title: state.title,
          toCity: state.toCity,
          costDelivery: state.costDelivery,
        ));
    await fireStoreService.createPost(post);
  }
}
