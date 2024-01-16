import 'package:cabto/app/themes/app_colors.dart';
import 'package:cabto/app/themes/app_styles.dart';
import 'package:flutter/material.dart';


class CommonInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final TextInputType inputType;
  final TextEditingController? controller;
  final bool isEnabled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onChanged;
  final Color? bgColor;
  final Color? textColor;

  const CommonInputField({
    Key? key,
    this.bgColor,
    this.textColor,
    this.labelText,
    this.initialValue,
    this.controller,
    this.hintText,
    this.inputType = TextInputType.text,
    this.isEnabled = true,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color:bgColor ?? AppColors.grey.withOpacity(0.15),
      child: TextFormField(
      
        initialValue: initialValue,
          maxLines: 1,
          controller: controller,
          style: AppStyles.tsBold18.copyWith(color:textColor),
          enabled: isEnabled,
          decoration: InputDecoration(
            
            labelStyle: AppStyles.tsBold18,
            labelText:labelText ,
            hintStyle:AppStyles.tsMedium22,
            hintText: hintText,
            enabled: isEnabled,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            contentPadding: contentPadding,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onChanged: onChanged,
        ),
    )
    ;
  }
}
