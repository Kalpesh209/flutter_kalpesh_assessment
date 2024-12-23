import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_images.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_strings.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Screens/detail_training_summary_screen.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Screens/next_section_screen.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Screens/swipe_list_item_widget.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Widgets/list_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
Title:To show a data on a HomePageScreen
Purpose:To show a data on a HomePageScreen
Created On : 20/12/2024
Edited On:20/12/2024
Author: Kalpesh Khandla
*/

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final List<String> titleTxtArray = [
    AppStrings.safeScrumMaster46,
    AppStrings.safeScrumMaster46,
    AppStrings.safeScrumMaster46,
    AppStrings.safeScrumMaster46,
    AppStrings.safeScrumMaster46,
    AppStrings.safeScrumMaster46,
  ];

  final List<String> dateArray = [
    AppStrings.date1,
    AppStrings.date1,
    AppStrings.date1,
    AppStrings.date1,
    AppStrings.date1,
    AppStrings.date1,
  ];
  final List<String> addressArray = [
    AppStrings.address,
    AppStrings.address,
    AppStrings.address,
    AppStrings.address,
    AppStrings.address,
    AppStrings.address,
  ];

  final List<String> timeArray = [
    AppStrings.time,
    AppStrings.time,
    AppStrings.time,
    AppStrings.time,
    AppStrings.time,
    AppStrings.time,
  ];

  final List<String> speakerArray = [
    AppStrings.helen,
    AppStrings.helen,
    AppStrings.helen,
    AppStrings.helen,
    AppStrings.helen,
    AppStrings.helen,
  ];

  final List<String> ticketStatusArray = [
    AppStrings.fillingFast,
    AppStrings.earlyBird,
    AppStrings.fillingFast,
    AppStrings.fillingFast,
    AppStrings.earlyBird,
    AppStrings.fillingFast,
  ];

  final List<String> ticketTitleArray = [
    AppStrings.safeScrumMaster,
    AppStrings.safeScrumMaster1,
    AppStrings.safeScrumMaster2,
  ];

  final List<String> ticketdateTimeArray = [
    AppStrings.west,
    AppStrings.west,
    AppStrings.west,
  ];

  final List<String> ticketDateArray = [
    AppStrings.date,
    AppStrings.date2,
    AppStrings.date3,
  ];

  final List<String> ticketOriginalPriceArray = [
    AppStrings.amount,
    AppStrings.amount2,
    AppStrings.amount3,
  ];

  final List<String> ticketDiscountedArray = [
    AppStrings.amount4,
    AppStrings.amount5,
    AppStrings.amount6,
  ];
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;

  // To initiase a method,widget and variables
  @override
  void initState() {
    super.initState();
  }

  // To dispose unnecessary method,widget and variables

  @override
  void dispose() {
    super.dispose();
  }

  // All Custom function and methods will go above build() method
  // To ScrollItem at specific Index
  void _scrollToIndex(int index) {
    // Ensure the index is within bounds
    if (index >= 0 && index < titleTxtArray.length) {
      setState(() {
        _currentIndex = index;
      });

      // Smoothly scroll to the index
      _scrollController.animateTo(
        index * 295.w, // Assuming each item's height is 70.0
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // on Next Item  Tap
  void _onNextItemTap() {
    if (_currentIndex < titleTxtArray.length - 1) {
      _scrollToIndex(_currentIndex + 1);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: AppColors.kColorFF4855,
          content: Text(
            AppStrings.noNext,
            style: TextStyle(
              fontSize: AppFontSize.fontSize18,
              fontWeight: AppFontWeight.fontWeight600,
              color: AppColors.kWhiteColor,
            ),
          ),
        ),
      );
    }
  }

  // on Left Item  Tap
  void _onPreviousItemTap() {
    if (_currentIndex > 0) {
      _scrollToIndex(_currentIndex - 1);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: AppColors.kColorFF4855,
          content: Text(
            AppStrings.noPrevious,
            style: TextStyle(
              fontSize: AppFontSize.fontSize18,
              fontWeight: AppFontWeight.fontWeight600,
              color: AppColors.kWhiteColor,
            ),
          ),
        ),
      );
    }
  }

  // Menu Icon Tap
  onMenuIconTap() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return NextSectionScreen();
      },
    ));
  }

  // viewDetails Tap
  onViewDetailsBtnTap() {
    print('View Details Tap');
  }

  // onListItemTap

  onListItemTap(String dateTxt, String timeTxt, String addressTxt,
      String ticketStatus, String ticketTitle, String speakerNameTxt) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return DetailTrainingSummaryScreen(
          ticketStatus: ticketStatus,
          ticketTitle: ticketTitle,
          speakerNameTxt: speakerNameTxt,
        );
      },
    ));
  }

  // viewDetails Tap
  viewDetailsTapped() {
    print('View Details is Tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _headerWidget(),
            _listWidget(),
          ],
        ),
      ),
    );
  }

  // All Design widgets will go below build() method

  _headerWidget() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 160.h,
              color: AppColors.kRedColor,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 45,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.trainings,
                          style: TextStyle(
                            fontSize: AppFontSize.fontSize34,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            onMenuIconTap();
                          },
                          child: Icon(
                            Icons.menu,
                            size: 25,
                            color: AppColors.kWhiteColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      AppStrings.highlights,
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: AppFontSize.fontSize20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 120.h,
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  left: 30,
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteColor,
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(
                        color: AppColors.kGreyColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImages.filterImg,
                          height: 10,
                          width: 10,
                          color: AppColors.kBlackColor,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          AppStrings.filter,
                          style: TextStyle(
                            color: AppColors.kBlackColor,
                            fontSize: AppFontSize.fontSize12,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned.fill(
          top: 30.h,
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _onPreviousItemTap();
                  },
                  child: Container(
                    height: 60.h,
                    width: 28.w,
                    decoration: BoxDecoration(
                      color: AppColors.kColorB2B2B2.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        size: 30,
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 65,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: ticketTitleArray.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 5.w, top: 70.h),
                        child: SwipeListItemWidget(
                          trainingTitleTxt: ticketTitleArray[index],
                          dateTimeAddressTxt: ticketdateTimeArray[index],
                          originalPriceTxt: ticketOriginalPriceArray[index],
                          discountedPriceTxt: ticketDiscountedArray[index],
                          onViewDetailsTap: () {
                            viewDetailsTapped();
                          },
                          dateTxt: ticketDateArray[index],
                        ),
                      );
                    },
                  ),
                ),
                // Spacer(),
                GestureDetector(
                  onTap: () {
                    _onNextItemTap();
                  },
                  child: Container(
                    height: 60.h,
                    width: 28.w,
                    decoration: BoxDecoration(
                      color: AppColors.kColorB2B2B2.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // To Show Bottom List
  _listWidget() {
    return Expanded(
      child: ListView.builder(
        itemCount: titleTxtArray.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onListItemTap(
                dateArray[index],
                timeArray[index],
                addressArray[index],
                ticketStatusArray[index],
                titleTxtArray[index],
                speakerArray[index],
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: ListItemWidget(
                addressTxt: addressArray[index],
                dateTxt: dateArray[index],
                speakerNameTxt: speakerArray[index],
                ticketTitle: titleTxtArray[index],
                ticketStatus: ticketStatusArray[index],
                timeTxt: timeArray[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
