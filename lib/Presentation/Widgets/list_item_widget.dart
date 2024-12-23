import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_images.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_strings.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Widgets/text_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
Title:To show a ListItemWidget in a ListView
Purpose:To show a ListItemWidget in a ListView
Created On : 20/12/2024
Edited On:20/12/2024
Author: Kalpesh Khandla
*/

class ListItemWidget extends StatefulWidget {
  final String dateTxt;
  final String timeTxt;
  final String addressTxt;
  final String ticketStatus;
  final String ticketTitle;
  final String speakerNameTxt;
  const ListItemWidget({
    super.key,
    required this.dateTxt,
    required this.timeTxt,
    required this.addressTxt,
    required this.ticketStatus,
    required this.ticketTitle,
    required this.speakerNameTxt,
  });

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Card(
          elevation: 2,
          child: Container(
            height: 150.h,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.w,
                right: 5.w,
                top: 15.h,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.dateTxt,
                        style: TextStyle(
                          color: AppColors.kBlackColor,
                          fontSize: AppFontSize.fontSize18,
                          fontWeight: AppFontWeight.fontWeight800,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        widget.timeTxt,
                        style: TextStyle(
                          color: AppColors.kBlackColor,
                          fontSize: AppFontSize.fontSize14,
                          fontWeight: AppFontWeight.fontWeight400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        widget.addressTxt,
                        style: TextStyle(
                          color: AppColors.kBlackColor,
                          fontSize: AppFontSize.fontSize12,
                          fontWeight: AppFontWeight.fontWeight600,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: DottedLine(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      lineLength: double.infinity,
                      lineThickness: 2.0,
                      dashLength: 4.0,
                      dashColor: AppColors.kGreyColor,
                      dashGapRadius: 0.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.ticketStatus,
                        style: TextStyle(
                          color: AppColors.kColorFF4855,
                          fontSize: AppFontSize.fontSize14,
                          fontWeight: AppFontWeight.fontWeight800,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        widget.ticketTitle,
                        style: TextStyle(
                          color: AppColors.kBlackColor,
                          fontSize: AppFontSize.fontSize18,
                          fontWeight: AppFontWeight.fontWeight800,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 50.0.w,
                                height: 50.0.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: ExactAssetImage(
                                      AppImages.southafImg,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 40,
                                right: 0,
                                left: 35,
                                bottom: 0,
                                child: Container(
                                  width: 20.0.w,
                                  height: 20.0.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: AppColors.kWhiteColor,
                                    ),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: ExactAssetImage(
                                        AppImages.verifyImg,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                widget.speakerNameTxt,
                                style: TextStyle(
                                  color: AppColors.kBlackColor,
                                  fontSize: AppFontSize.fontSize14,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 110.w,
                          ),
                          TextButtonWidget(
                            btnTxt: AppStrings.enrolNow,
                            btnWidth: 80.w,
                            btnSize: AppFontSize.fontSize12,
                            onBtnPress: () {},
                          ),
                        ],
                      ),
                    ],
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
