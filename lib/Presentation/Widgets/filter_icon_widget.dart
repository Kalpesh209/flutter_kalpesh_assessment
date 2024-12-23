import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
Title:To show a data on a listview 
Purpose:To show a data on a listview
Created On : 20/12/2024
Edited On:20/12/2024
Author: Kalpesh Khandla
*/

class FilterIconWidget extends StatelessWidget {
  final IconData leadingIcon;
  final String filterTxt;
  const FilterIconWidget({
    super.key,
    required this.leadingIcon,
    required this.filterTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Container(
        height: 5.h,
        decoration: BoxDecoration(
          color: AppColors.kGreyColor.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                leadingIcon,
                size: 15.h,
                color: AppColors.kWhiteColor,
              ),
              SizedBox(
                width: 3.r,
              ),
              Text(
                filterTxt,
                style: TextStyle(
                  color: AppColors.kWhiteColor,
                  fontWeight: AppFontWeight.fontWeight600,
                  fontSize: AppFontSize.fontSize14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
