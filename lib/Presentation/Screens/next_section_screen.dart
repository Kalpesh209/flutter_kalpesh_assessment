import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_strings.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Widgets/detail_item_widget.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Widgets/filter_icon_widget.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Widgets/text_form_field_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
Title:To show a data on a NextSectionScreen
Purpose:To show a data on a NextSectionScreen
Created On : 20/12/2024 & 21/12/2024
Edited On: 20/12/2024 & 21/12/2024
Author: Kalpesh Khandla
*/

class NextSectionScreen extends StatefulWidget {
  const NextSectionScreen({
    super.key,
  });

  @override
  State<NextSectionScreen> createState() => _NextSectionScreenState();
}

class _NextSectionScreenState extends State<NextSectionScreen> {
  final List<String> titleTxtArray = [
    AppStrings.filter,
    AppStrings.nearMe,
    AppStrings.fillingFast,
    AppStrings.thisMonth,
    AppStrings.earlyBird,
  ];

  final List<IconData> iconArray = [
    Icons.file_copy,
    Icons.search,
    Icons.search,
    Icons.search,
    Icons.search,
  ];

  final List<String> eventTitleArray = [
    AppStrings.safeScrumMaster46,
    AppStrings.safeScrumMaster46,
    AppStrings.safeScrumMaster46,
    AppStrings.safeScrumMaster46,
    AppStrings.safeScrumMaster46,
  ];

  final List<String> speakerArray = [
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
  ];
  // To initiase a method,widget and variables
  bool isSortBySelected = false;
  bool isLocationSelected = true;
  bool isTrainingNameSelected = false;
  bool isTrainerSelected = false;
  TextEditingController searchController = TextEditingController();
  final List<String> locations = [
    "West Des Moines",
    "Chicago, IL",
    "Phoenix, AZ",
    "Dallas, TX",
    "San Diego, CA",
    "San Fransisco, CA",
    "New York, ZK",
  ];

  final Map<String, bool> locationSelections = {};

  @override
  void initState() {
    super.initState();
    for (var location in locations) {
      locationSelections[location] = false;
    }
    locationSelections["West Des Moines"] = true;
  }

  // To dispose unnecessary method,widget and variables
  @override
  void dispose() {
    super.dispose();
  }

  onFilterBtnTap(BuildContext context) {
    _modalBottomSheet(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              _headerWidget(),
              _detailsWidget(),
            ],
          ),
        ));
  }

  // To show header part in a Next Section Screen
  _headerWidget() {
    return Stack(
      children: [
        Container(
          height: 130.h,
          decoration: BoxDecoration(
            color: AppColors.kColorFF4855,
          ),
        ),
        Positioned(
          top: 00,
          bottom: 00,
          left: 10.w,
          right: 10.w,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppStrings.trainings,
                style: TextStyle(
                  fontSize: AppFontSize.fontSize34,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Flexible(
                  child: ListView.builder(
                itemCount: titleTxtArray.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      onFilterBtnTap(context);
                    },
                    child: FilterIconWidget(
                      leadingIcon: iconArray[index],
                      filterTxt: titleTxtArray[index],
                    ),
                  );
                },
              )),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        )
      ],
    );
  }

  // To show a details about training
  _detailsWidget() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: eventTitleArray.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
            child: DetailItemWidget(
              ticketStatus: ticketStatusArray[index],
              ticketTitle: eventTitleArray[index],
              speakerNameTxt: speakerArray[index],
            ),
          );
        },
      ),
    );
  }

  void _modalBottomSheet(BuildContext context) {
    showBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) => StatefulBuilder(
          builder: (BuildContext context, StateSetter stateSetter) {
        return Card(
          elevation: 3.r,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.67,
            // height: 453.h,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 15.w,
                    top: 15.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.sort,
                        style: TextStyle(
                          color: AppColors.kBlackColor,
                          fontSize: AppFontSize.fontSize22,
                          fontWeight: AppFontWeight.fontWeight700,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.close,
                          color: AppColors.kGreyColor,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  height: 1,
                  color: AppColors.kGreyColor.withValues(alpha: 0.4),
                  // thickness: 1,
                ),
                Row(
                  children: [
                    Container(
                      height: 410.h,
                      decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              stateSetter(() {
                                isLocationSelected = false;
                                isSortBySelected = true;
                                isTrainerSelected = false;
                                isTrainingNameSelected = false;
                              });
                            },
                            child: isSortBySelected
                                ? Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.kColorFF4855,
                                        ),
                                      ),
                                      Container(
                                        height: 50.h,
                                        width: 145.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.kWhiteColor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            AppStrings.sortBy,
                                            style: TextStyle(
                                              color: AppColors.kBlackColor,
                                              fontSize: AppFontSize.fontSize20,
                                              fontWeight:
                                                  AppFontWeight.fontWeight600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(
                                    height: 50.h,
                                    width: 155.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.kGreyColor
                                          .withValues(alpha: 0.3),
                                    ),
                                    child: Center(
                                      child: Text(
                                        AppStrings.sortBy,
                                        style: TextStyle(
                                          color: AppColors.kBlackColor,
                                          fontSize: AppFontSize.fontSize20,
                                          fontWeight:
                                              AppFontWeight.fontWeight600,
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                          GestureDetector(
                            onTap: () {
                              stateSetter(() {
                                isLocationSelected = true;
                                isSortBySelected = false;
                                isTrainerSelected = false;
                                isTrainingNameSelected = false;
                              });
                            },
                            child: isLocationSelected
                                ? Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.kColorFF4855,
                                        ),
                                      ),
                                      Container(
                                        height: 50.h,
                                        width: 145.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.kWhiteColor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            AppStrings.loation,
                                            style: TextStyle(
                                              color: AppColors.kBlackColor,
                                              fontSize: AppFontSize.fontSize20,
                                              fontWeight:
                                                  AppFontWeight.fontWeight600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(
                                    height: 50.h,
                                    width: 155.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.kGreyColor
                                          .withValues(alpha: 0.3),
                                    ),
                                    child: Center(
                                      child: Text(
                                        AppStrings.loation,
                                        style: TextStyle(
                                          color: AppColors.kBlackColor,
                                          fontSize: AppFontSize.fontSize20,
                                          fontWeight:
                                              AppFontWeight.fontWeight600,
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                          GestureDetector(
                            onTap: () {
                              stateSetter(() {
                                isLocationSelected = false;
                                isSortBySelected = false;
                                isTrainerSelected = false;
                                isTrainingNameSelected = true;
                              });
                            },
                            child: isTrainingNameSelected
                                ? Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.kColorFF4855,
                                        ),
                                      ),
                                      Container(
                                        height: 50.h,
                                        width: 145.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.kWhiteColor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            AppStrings.trainingName,
                                            style: TextStyle(
                                              color: AppColors.kBlackColor,
                                              fontSize: AppFontSize.fontSize20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(
                                    height: 50.h,
                                    width: 155.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.kGreyColor
                                          .withValues(alpha: 0.3),
                                    ),
                                    child: Center(
                                      child: Text(
                                        AppStrings.trainingName,
                                        style: TextStyle(
                                          color: AppColors.kBlackColor,
                                          fontSize: AppFontSize.fontSize20,
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                          GestureDetector(
                            onTap: () {
                              stateSetter(() {
                                isLocationSelected = false;
                                isSortBySelected = false;
                                isTrainerSelected = true;
                                isTrainingNameSelected = false;
                              });
                            },
                            child: isTrainerSelected
                                ? Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.kColorFF4855,
                                        ),
                                      ),
                                      Container(
                                        height: 50.h,
                                        width: 145.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.kWhiteColor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            AppStrings.trainer,
                                            style: TextStyle(
                                              color: AppColors.kBlackColor,
                                              fontSize: AppFontSize.fontSize20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(
                                    height: 50.h,
                                    width: 155.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.kGreyColor
                                          .withValues(alpha: 0.3),
                                    ),
                                    child: Center(
                                      child: Text(
                                        AppStrings.trainer,
                                        style: TextStyle(
                                          color: AppColors.kBlackColor,
                                          fontSize: AppFontSize.fontSize20,
                                        ),
                                      ),
                                    ),
                                  ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 410.h,
                      width: 195.w,
                      decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10.w,
                          right: 10.w,
                          top: 8.h,
                        ),
                        child: isSortBySelected
                            ? Text(
                                AppStrings.sortBySelected,
                                style: TextStyle(
                                    fontSize: AppFontSize.fontSize18,
                                    color: AppColors.kBlackColor),
                              )
                            : isLocationSelected
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: TextFormFieldWidget(
                                          controller: searchController,
                                          isPasswordField: false,
                                          inputAction: TextInputAction.none,
                                          onFieldSubmitted: (value) {},
                                          validator: (p0) {
                                            return null;
                                          },
                                          hint: AppStrings.search,
                                          prefixIcon: Icon(
                                            Icons.search,
                                            size: 20,
                                            color: AppColors.kGreyColor,
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 3,
                                        child: ListView(
                                          children: locations.map((location) {
                                            return ListTileTheme(
                                              horizontalTitleGap: 0,
                                              child: CheckboxListTile(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                visualDensity: VisualDensity
                                                    .adaptivePlatformDensity,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 0.0),
                                                fillColor: MaterialStateProperty
                                                    .resolveWith(
                                                        (Set<MaterialState>
                                                            states) {
                                                  if (states.contains(
                                                      MaterialState.selected)) {
                                                    return AppColors
                                                        .kColorFF4855; //
                                                  }
                                                  return AppColors.kColorF2F2F2;
                                                }),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                title: Text(
                                                  location,
                                                  style: TextStyle(
                                                    fontSize:
                                                        AppFontSize.fontSize16,
                                                  ),
                                                ),
                                                value: locationSelections[
                                                    location],
                                                onChanged: (bool? value) {
                                                  stateSetter(() {
                                                    locationSelections[
                                                        location] = value!;
                                                  });
                                                },
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  )
                                : isTrainingNameSelected
                                    ? Text(
                                        AppStrings.trainingNameSelected,
                                        style: TextStyle(
                                            fontSize: AppFontSize.fontSize18,
                                            color: AppColors.kBlackColor),
                                      )
                                    : isTrainerSelected
                                        ? Text(
                                            AppStrings.trainerSelected,
                                            style: TextStyle(
                                                fontSize:
                                                    AppFontSize.fontSize18,
                                                color: AppColors.kBlackColor),
                                          )
                                        : Text('data'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
