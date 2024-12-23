import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Widgets/text_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../AppUtils/app_strings.dart';

/*
Title:To show a DetailItemWidget on a listview 
Purpose:To show a DetailItemWidget on a listview
Created On : 21/12/2024
Edited On:21/12/2024
Author: Kalpesh Khandla
*/

class DetailItemWidget extends StatelessWidget {
  final String ticketStatus;
  final String ticketTitle;
  final String speakerNameTxt;
  const DetailItemWidget({
    super.key,
    required this.ticketStatus,
    required this.ticketTitle,
    required this.speakerNameTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 3.r,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Container(
            height: 150.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ticketTitle,
                    style: TextStyle(
                      color: AppColors.kBlackColor,
                      fontSize: AppFontSize.fontSize22,
                      fontWeight: AppFontWeight.fontWeight800,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.ticket,
                        color: AppColors.kGreenColor,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        ticketStatus,
                        style: TextStyle(
                          color: AppColors.kGreenColor,
                          fontSize: AppFontSize.fontSize14,
                          fontWeight: AppFontWeight.fontWeight600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    AppStrings.keynote,
                    style: TextStyle(
                      color: AppColors.kBlackColor,
                      fontSize: AppFontSize.fontSize16,
                      fontWeight: AppFontWeight.fontWeight600,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    speakerNameTxt,
                    style: TextStyle(
                      color: AppColors.kBlackColor,
                      fontSize: AppFontSize.fontSize14,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextButtonWidget(
                    btnTxt: AppStrings.enrolNow,
                    btnWidth: double.infinity,
                    btnSize: AppFontSize.fontSize20,
                    onBtnPress: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
