import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/parcel_cubit.dart';

class ParcelPage extends StatelessWidget {
  ParcelPage({super.key});

  ParcelCubit bloc = ParcelCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ParcelCubit>(
      create: (context) => bloc,
      child: BlocBuilder<ParcelCubit, ParcelState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 120),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      // _InputFieldParcel(
                      //   onChanged: (value) {
                      //     bloc.setTags(value);
                      //   },
                      //   label: 'Tags',
                      // ),

                      Container(
                        height: 50,
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                  onTap: () => bloc.setTags(['All']),
                                  child: Container(
                                    child: Center(child: Text('All')),
                                    color: Colors.amber,
                                  )),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: GestureDetector(
                                  onTap: () => bloc.setTags(['New']),
                                  child: Container(
                                    child: Center(child: Text('New')),
                                    color: Colors.amber,
                                  )),
                            )
                          ],
                        ),
                      ),
                      _InputFieldParcel(
                        onChanged: (value) {
                          bloc.setDataStartDelivery(value);
                        },
                        label: 'dataStartDelivery',
                      ),
                      _InputFieldParcel(
                        onChanged: (value) {
                          bloc.setDataEndDelivery(value);
                        },
                        label: 'setDataEndDelivery',
                      ),
                      _InputFieldParcel(
                        onChanged: (value) {
                          bloc.setFromCountry(value);
                        },
                        label: 'setFromCountry',
                      ),
                      _InputFieldParcel(
                        onChanged: (value) {
                          bloc.setToCountry(value);
                        },
                        label: 'setToCountry',
                      ),
                      _InputFieldParcel(
                        onChanged: (value) {
                          bloc.setCompanyName(value);
                        },
                        label: 'setCompanyName',
                      ),
                      _InputFieldParcel(
                        onChanged: (value) {
                          bloc.setFromCity(value);
                        },
                        label: 'setFromCity',
                      ),
                      _InputFieldParcel(
                        onChanged: (value) {
                          bloc.setTitle(value);
                        },
                        label: 'setTitle',
                      ),
                      _InputFieldParcel(
                        onChanged: (value) {
                          bloc.setToCity(value);
                        },
                        label: 'setToCity',
                      ),
                      _InputFieldParcel(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          bloc.setProgressStep(int.parse(value));
                        },
                        label: 'setProgressStep',
                      ),
                      _InputFieldParcel(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          bloc.setCostDelivery(int.parse(value));
                        },
                        label: 'setCostDelivery',
                      ),
                      _InputFieldParcel(
                        onChanged: (value) {
                          bloc.setDataCreate(value);
                        },
                        label: 'setDataCreate',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                GestureDetector(
                    onTap: () => bloc.savePost(),
                    child: Container(
                      width: double.infinity,
                      child: Center(child: Text('save data')),
                      height: 50,
                      color: Colors.amber,
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}

class _InputFieldParcel extends StatelessWidget {
  final Function(dynamic) onChanged;
  final String label;
  final TextInputType keyboardType;

  const _InputFieldParcel(
      {super.key,
      required this.onChanged,
      required this.label,
      this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      style: TextStyle(color: Colors.white),
      onChanged: (value) => onChanged(value),
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}
