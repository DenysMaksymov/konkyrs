part of 'parcel_cubit.dart';

enum Tags { all, newOne }

class ParcelState {
  final String dataCreate;
  final List<String> tags;

  //   "id": 0,
  ///FormatApp.formatterDataToSave.format(DateTime.now())
  final String dataStartDelivery;
  final String dataEndDelivery;
  final String fromCountry;
  final String toCountry;
  final String companyName;
  final String fromCity;
  final String title;
  final String toCity;
  final int progressStep;
  final int costDelivery;

  const ParcelState({
    required this.tags,
    required this.dataStartDelivery,
    required this.dataEndDelivery,
    required this.fromCountry,
    required this.toCountry,
    required this.companyName,
    required this.fromCity,
    required this.title,
    required this.toCity,
    required this.progressStep,
    required this.costDelivery,
    required this.dataCreate,
  });

  ParcelState.initial()
      : tags = [],
        dataStartDelivery = '',
        dataEndDelivery = '',
        fromCountry = '',
        toCountry = '',
        companyName = '',
        fromCity = '',
        title = '',
        toCity = '',
        progressStep = 0,
        costDelivery = 0,
        dataCreate = '';

  @override
  List<Object> get props => [
        tags,
        dataStartDelivery,
        dataEndDelivery,
        fromCountry,
        toCountry,
        companyName,
        fromCity,
        title,
        toCity,
        progressStep,
        costDelivery,
        dataCreate,
      ];
}
