import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SocialIcon extends StatelessWidget {
  final String title;
  final Widget icon;

  const SocialIcon({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.blackColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          Text(
            title,
            style: const TextStyle(fontSize: 15, color: AppColor.blackColor),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
