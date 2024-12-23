import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
Title:To show TextFormFieldWidget
Purpose:To show TextFormFieldWidget
Created On : 21/12/2024
Edited On: 21/12/2024
Author: Kalpesh Khandla
*/

class TextFormFieldWidget extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final bool isPasswordField;
  final bool? isPhoneField;
  final TextInputAction inputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final Function()? onTextFieldTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isRead;
  final int maxline;
  const TextFormFieldWidget({
    required this.controller,
    required this.isPasswordField,
    required this.inputAction,
    required this.onFieldSubmitted,
    required this.validator,
    this.onChanged,
    this.textInputType = TextInputType.text,
    this.hint = '',
    this.focusNode,
    this.isPhoneField,
    this.enabled = true,
    this.isRead = false,
    this.suffixIcon,
    this.prefixIcon,
    this.onTextFieldTap,
    this.maxline = 1,
    Key? key,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return _getNormalField();
  }

  Widget _getNormalField() {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          color: AppColors.kGreyColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              showCursor: true,
              readOnly: widget.isRead,
              controller: widget.controller,
              style: _getTextStyle(),
              validator: (value) {
                return widget.validator!(value);
              },
              focusNode: widget.focusNode,
              textAlignVertical: TextAlignVertical.bottom,
              cursorColor: AppColors.kGreyColor,
              keyboardType: widget.textInputType,
              autocorrect: false,
              onChanged: widget.onChanged,
              onFieldSubmitted: widget.onFieldSubmitted,
              autovalidateMode: AutovalidateMode.disabled,
              enableSuggestions: false,
              textInputAction: widget.inputAction,
              inputFormatters: [
                widget.isPhoneField == true
                    ? FilteringTextInputFormatter.digitsOnly
                    : FilteringTextInputFormatter.singleLineFormatter
              ],
              maxLength: widget.isPhoneField == true ? 10 : null,
              enabled: widget.enabled,
              maxLines: widget.maxline,
              //decoration: null,
              decoration: _getNormalInputDecoration(),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _getNormalInputDecoration() {
    return InputDecoration(
      hintText: widget.hint,
      hintStyle: TextStyle(
        fontSize: AppFontSize.fontSize16,
        color: AppColors.kGreyColor,
      ),
      isDense: true,
      contentPadding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: 15,
      ),
      suffixIcon: widget.suffixIcon,
      prefixIcon: widget.prefixIcon,
      border: InputBorder.none,
      /*enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
        borderSide: BorderSide(
          width: 1,
          color: AppColors.kDropDownBackColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        borderSide: BorderSide(
          color: AppColors.kDropDownBackColor,
          style: BorderStyle.solid,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        borderSide: BorderSide(
          color: AppColors.kDropDownBackColor,
          style: BorderStyle.solid,
        ),
      ),*/
    );
  }

  TextStyle _getTextStyle() {
    return TextStyle(
      fontSize: 14,
      color: AppColors.kGreyColor,
      fontWeight: AppFontWeight.fontWeight400,
    );
  }
}
