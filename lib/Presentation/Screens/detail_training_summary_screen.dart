import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_strings.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Widgets/text_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailTrainingSummaryScreen extends StatefulWidget {
  // final String dateTxt;
  // final String timeTxt;
  // final String addressTxt;
  final String? ticketStatus;
  final String? ticketTitle;
  final String? speakerNameTxt;
  const DetailTrainingSummaryScreen({
    super.key,
    // required this.dateTxt,
    // required this.timeTxt,
    // required this.addressTxt,
    required this.ticketStatus,
    required this.ticketTitle,
    required this.speakerNameTxt,
  });

  @override
  State<DetailTrainingSummaryScreen> createState() =>
      _DetailTrainingSummaryScreenState();
}

class _DetailTrainingSummaryScreenState
    extends State<DetailTrainingSummaryScreen> {
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
    return Scaffold(
      appBar: _appBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
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
                        widget.ticketTitle ?? '',
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
                            widget.ticketStatus ?? '',
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
                        widget.speakerNameTxt ?? '',
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
            )
          ],
        ),
      ),
    );
  }

  // Detail Screen Header
  PreferredSizeWidget _appBarWidget() {
    return AppBar(
      backgroundColor: AppColors.kColorFF4855,
      title: Text(
        AppStrings.trainingDetails,
        style: TextStyle(
          fontSize: AppFontSize.fontSize28,
          fontWeight: FontWeight.w600,
          color: AppColors.kWhiteColor,
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back,
          color: AppColors.kWhiteColor,
          size: 30,
        ),
      ),
    );
  }
}
