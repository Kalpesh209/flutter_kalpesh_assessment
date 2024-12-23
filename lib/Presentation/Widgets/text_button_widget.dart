import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextButtonWidget extends StatelessWidget {
  final String btnTxt;
  final Function() onBtnPress;
  final double btnWidth;
  final double btnSize;
  const TextButtonWidget({
    super.key,
    required this.btnTxt,
    required this.onBtnPress,
    required this.btnWidth,
    required this.btnSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: btnWidth,
      decoration: BoxDecoration(
        color: AppColors.kColorFF4855,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: TextButton(
        onPressed: () {
          onBtnPress();
        },
        child: Text(
          btnTxt,
          style: TextStyle(
            color: AppColors.kWhiteColor,
            fontSize: btnSize,
            fontWeight: AppFontWeight.fontWeight800,
          ),
        ),
      ),
    );
  }
}
