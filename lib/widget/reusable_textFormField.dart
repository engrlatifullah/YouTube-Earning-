import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ReusableTextFormField extends StatelessWidget {
  final String? hintText;
  final String? initialValue;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String ? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcons;
  final bool isPass;
  final TextInputAction ? textInputAction;

  const ReusableTextFormField(
      {Key? key,
      this.hintText,
      this.controller,
      this.keyboardType,
      this.validator,
      this.prefixIcon,
      this.suffixIcons,
       this.isPass = false, this.textInputAction, this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: isPass,
      initialValue:initialValue,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        filled: true,
        fillColor: AppColor.lightGreyColor,
        prefixIcon: prefixIcon,
        hintText: hintText,
        suffixIcon: suffixIcons,
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
