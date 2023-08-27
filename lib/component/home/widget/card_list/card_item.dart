import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logist/model/post.dart';
import 'package:logist/utils/color_sour_app.dart';
import 'package:logist/utils/icon_sours.dart';

class CardItem extends StatelessWidget {
  final Post post;

  const CardItem({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: ColorSourApp.darkGrey),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'ID: ${post.id}',
                style: const TextStyle(color: ColorSourApp.grey),
              ),
              const SizedBox(width: 5),
              SvgPicture.asset(IconSours.copy, width: 20, height: 20),
              const Spacer(),

              Row(
                children: [
                  ...post.tags!.map((e) => ItemDescription(
                        label: '${e}',
                      ))
                ],
              ),
              // ItemDescription(
              //   label: '${post.tags?[0]}',
              // ),
              const SizedBox(width: 8),
              // ItemDescription(
              //   label: '${post.tags?[0]}',
              // ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            '${post.data?.title}',
            style: TextStyle(color: ColorSourApp.white, fontSize: 18),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${post.data?.fromCity}',
                    style: TextStyle(color: ColorSourApp.white, fontSize: 12),
                  ),
                  Text(
                    '${post.data?.dataStartDelivery}',
                    style: TextStyle(color: ColorSourApp.grey, fontSize: 12),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${post.data?.toCity}',
                    style: TextStyle(color: ColorSourApp.white, fontSize: 12),
                  ),
                  Text(
                    '${post.data?.dataEndDelivery}',
                    style: TextStyle(color: ColorSourApp.grey, fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          const ProgressLine(),
          const SizedBox(height: 20),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Вартість доставки: ${post.data?.dataEndDelivery} грн',
                    style: TextStyle(color: ColorSourApp.white, fontSize: 12),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${post.data?.companyName}',
                    style: TextStyle(color: ColorSourApp.grey, fontSize: 12),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: ColorSourApp.lightOrange,
                    borderRadius: BorderRadius.circular(20)),
                child: SvgPicture.asset(
                  IconSours.arrowRight,
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ItemDescription extends StatelessWidget {
  final String label;

  const ItemDescription({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      decoration: BoxDecoration(
          color: ColorSourApp.lightOrange,
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        label,
        style: const TextStyle(color: ColorSourApp.white),
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            width: double.infinity,
            height: 2,
            color: ColorSourApp.greyMiddle,
          ),
          Positioned(
            right: 90,
            left: 0,
            child: Container(
              margin: const EdgeInsets.only(top: 4),
              height: 2,
              color: ColorSourApp.lightOrange,
            ),
          ),
          Positioned(
              child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: ColorSourApp.greyMiddle,
                borderRadius: BorderRadius.circular(10)),
          )),
        ],
      ),
    );
  }
}
