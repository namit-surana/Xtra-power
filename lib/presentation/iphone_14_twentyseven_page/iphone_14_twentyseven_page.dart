import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_drop_down.dart';
import 'package:namit_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class Iphone14TwentysevenPage extends StatelessWidget {
  Iphone14TwentysevenPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList3 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    top: 24.v,
                    right: 25.h,
                  ),
                  child: Column(
                    children: [
                      CustomSearchView(
                        controller: searchController,
                        hintText: "msg_search_by_name_or".tr,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(14.h, 17.v, 15.h, 13.v),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgSearchBlack900,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 50.v,
                        ),
                        suffix: Padding(
                          padding: EdgeInsets.only(
                            right: 15.h,
                          ),
                          child: IconButton(
                            onPressed: () {
                              searchController.clear();
                            },
                            icon: Icon(
                              Icons.clear,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 42.v),
                      SizedBox(
                        height: 185.v,
                        width: 340.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 58.v,
                                width: 340.h,
                                margin: EdgeInsets.only(top: 52.v),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgMaterialsymbolsedit,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 17.v,
                                        right: 21.h,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15.h,
                                          vertical: 18.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlack9002
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder15,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "msg_1_1234_distributor1".tr,
                                              style: theme.textTheme.bodyLarge,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 39.h),
                                              child: Text(
                                                "lbl_so".tr,
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: 58.v,
                                width: 340.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgMaterialsymbolsedit,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 17.v,
                                        right: 21.h,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15.h,
                                          vertical: 18.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlack9002
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder15,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "msg_2_1235_distributor2".tr,
                                              style: theme.textTheme.bodyLarge,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 33.h),
                                              child: Text(
                                                "lbl_so".tr,
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 8.v,
                                ),
                                decoration: AppDecoration.fillPrimary1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder11,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomDropDown(
                                      width: 113.h,
                                      icon: Container(
                                        margin: EdgeInsets.only(left: 30.h),
                                        child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgRaphaelarrowdown,
                                        ),
                                      ),
                                      margin: EdgeInsets.only(left: 1.h),
                                      hintText: "lbl_name".tr,
                                      items: dropdownItemList,
                                      onChanged: (value) {},
                                    ),
                                    SizedBox(height: 14.v),
                                    CustomDropDown(
                                      width: 114.h,
                                      icon: Container(
                                        margin: EdgeInsets.only(left: 14.h),
                                        child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgRaphaelarrowdown,
                                        ),
                                      ),
                                      hintText: "lbl_onboarded2".tr,
                                      items: dropdownItemList1,
                                      onChanged: (value) {},
                                    ),
                                    CustomDropDown(
                                      width: 113.h,
                                      icon: Container(
                                        margin: EdgeInsets.only(left: 30.h),
                                        child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgRaphaelarrowdown,
                                        ),
                                      ),
                                      margin: EdgeInsets.only(
                                        left: 1.h,
                                        top: 15.v,
                                      ),
                                      hintText: "lbl_on_hold".tr,
                                      items: dropdownItemList2,
                                      onChanged: (value) {},
                                    ),
                                    CustomDropDown(
                                      width: 113.h,
                                      icon: Container(
                                        margin: EdgeInsets.only(left: 30.h),
                                        child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgRaphaelarrowdown,
                                        ),
                                      ),
                                      margin: EdgeInsets.only(
                                        left: 1.h,
                                        top: 11.v,
                                        bottom: 5.v,
                                      ),
                                      hintText: "lbl_rejected".tr,
                                      items: dropdownItemList3,
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 131.h,
                                  top: 6.v,
                                ),
                                child: Text(
                                  "lbl_filter".tr,
                                  style: CustomTextStyles.bodyLarge17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 17.v),
                      SizedBox(
                        height: 58.v,
                        width: 340.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgMaterialsymbolsedit,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(
                                top: 17.v,
                                right: 21.h,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.h,
                                  vertical: 18.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "msg_3_1236_distributor3".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 32.h),
                                      child: Text(
                                        "lbl_so".tr,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
