import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_images.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
Title:To show a data on a Listview
Purpose:To show a data on a Listview
Created On : 22/12/2024
Edited On: 22/12/2024
Author: Kalpesh Khandla
*/

class SwipeListItemWidget extends StatefulWidget {
  final String trainingTitleTxt;
  final String dateTimeAddressTxt;
  final String originalPriceTxt;
  final String discountedPriceTxt;
  final Function() onViewDetailsTap;
  final String dateTxt;

  const SwipeListItemWidget({
    super.key,
    required this.trainingTitleTxt,
    required this.dateTimeAddressTxt,
    required this.originalPriceTxt,
    required this.discountedPriceTxt,
    required this.onViewDetailsTap,
    required this.dateTxt,
  });

  @override
  State<SwipeListItemWidget> createState() => _SwipeListItemWidgetState();
}

class _SwipeListItemWidgetState extends State<SwipeListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120.h,
          width: 295.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.pixelsImg),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.trainingTitleTxt,
                style: TextStyle(
                  fontSize: AppFontSize.fontSize18,
                  fontWeight: AppFontWeight.fontWeight600,
                  color: AppColors.kWhiteColor,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Text(
                    widget.dateTimeAddressTxt,
                    style: TextStyle(
                      fontSize: AppFontSize.fontSize14,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    widget.dateTxt,
                    style: TextStyle(
                      fontSize: AppFontSize.fontSize14,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        widget.originalPriceTxt,
                        style: TextStyle(
                          fontSize: AppFontSize.fontSize14,
                          color: AppColors.kColorFF4855,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,
                          fontWeight: AppFontWeight.fontWeight400,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        widget.discountedPriceTxt,
                        style: TextStyle(
                          fontSize: AppFontSize.fontSize18,
                          color: AppColors.kColorFF4855,
                          fontWeight: AppFontWeight.fontWeight800,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.onViewDetailsTap();
                    },
                    child: Row(
                      children: [
                        Text(
                          AppStrings.viewDetails,
                          style: TextStyle(
                            color: AppColors.kWhiteColor,
                            fontSize: AppFontSize.fontSize17,
                            fontWeight: AppFontWeight.fontWeight600,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          size: 30,
                          color: AppColors.kWhiteColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
