import 'package:flutter/material.dart';

import '../utils/colors.dart';
class ReusableButton extends StatelessWidget {
  final String  title;
  final VoidCallback ? onTap;
  final bool filled;
  const ReusableButton({Key? key, required this.title, this.onTap,  this.filled = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: filled ? AppColor.blackColor : AppColor.whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(

              color: filled ? AppColor.whiteColor : AppColor.blackColor
          )
        ),
        child: Text(title,style: TextStyle(
          fontSize: 15,fontWeight: FontWeight.w500,
            color: filled ? AppColor.whiteColor : AppColor.blackColor
        ),),
      ),
    );
  }
}
