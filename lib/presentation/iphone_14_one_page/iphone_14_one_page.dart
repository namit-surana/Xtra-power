import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:namit_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:namit_s_application1/widgets/custom_floating_button.dart';

class Iphone14OnePage extends StatefulWidget {

  const Iphone14OnePage({Key? key}) : super(key: key);

  @override
  State<Iphone14OnePage> createState() => _Iphone14OnePageState();
}

class _Iphone14OnePageState extends State<Iphone14OnePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 55.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 25.h, top: 68.v, bottom: 7.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_test_outlet".tr,
                    margin:
                        EdgeInsets.only(left: 23.h, top: 70.v, bottom: 14.v)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgMaterialsymbol,
                      margin: EdgeInsets.fromLTRB(31.h, 66.v, 31.h, 15.v))
                ],
                styleType: Style.bgFill),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 156.v),
                        child: Column(children: [
                          Container(
                              height: 211.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary
                                      .withOpacity(0.42))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 25.h, top: 24.v),
                                  child: Text("lbl_test_outlet".tr,
                                      style: theme.textTheme.headlineLarge))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 25.h, top: 1.v),
                                  child: Text("lbl_ambajogai".tr,
                                      style: theme.textTheme.headlineSmall))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 91.h, top: 44.v, right: 91.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgMaterialsymbolscall,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize),
                                    Spacer(flex: 50),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMdilocation,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize),
                                    Spacer(flex: 50),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgRiwhatsappfill,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize)
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 25.h, top: 37.v),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgMaterialsymbolsstarrounded,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 3.v, bottom: 2.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 14.h),
                                        child: Text("lbl_informations".tr,
                                            style:
                                                theme.textTheme.headlineSmall))
                                  ]))),
                          SizedBox(height: 13.v),
                          // Container(
                          //     margin: EdgeInsets.symmetric(horizontal: 25.h),
                          //     padding: EdgeInsets.symmetric(vertical: 12.v),
                          //     decoration: AppDecoration.outlineBlack,
                          //     child: Row(
                          //         mainAxisAlignment:
                          //         MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Padding(
                          //               padding: EdgeInsets.only(top: 2.v),
                          //               child: Text("lbl_outlet_state".tr,
                          //                   style:
                          //                   CustomTextStyles.bodyLarge18)),
                          //           Padding(
                          //               padding: EdgeInsets.only(top: 2.v),
                          //               child: Text("lbl_maharashtra".tr,
                          //                   style:
                          //                   CustomTextStyles.bodyLarge18))
                          //         ])),

                          // Container(
                          //     margin: EdgeInsets.symmetric(horizontal: 25.h),
                          //     padding: EdgeInsets.symmetric(vertical: 12.v),
                          //     decoration: AppDecoration.outlineBlack,
                          //     child: Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Padding(
                          //               padding: EdgeInsets.only(top: 2.v),
                          //               child: Text("lbl_outlet_dist".tr,
                          //                   style:
                          //                       CustomTextStyles.bodyLarge18)),
                          //           Padding(
                          //               padding: EdgeInsets.only(top: 2.v),
                          //               child: Text("lbl_beed".tr,
                          //                   style:
                          //                       CustomTextStyles.bodyLarge18))
                          //         ])),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(vertical: 10.v),
                              decoration: AppDecoration.outlineBlack,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 6.v),
                                        child: Text("lbl_outlet_city".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18)),
                                    Padding(
                                        padding: EdgeInsets.only(top: 6.v),
                                        child: Text("lbl_ambajogai".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))
                                  ])),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(vertical: 12.v),
                              decoration: AppDecoration.outlineBlack,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text("lbl_distributor".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18)),
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text("lbl_distributorx2".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))
                                  ])),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(vertical: 12.v),
                              decoration: AppDecoration.outlineBlack,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 3.v),
                                        child: Text("lbl_area".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 3.v, right: 1.h),
                                        child: Text("lbl_bus_stand".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))
                                  ])),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(vertical: 10.v),
                              decoration: AppDecoration.outlineBlack,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 6.v),
                                        child: Text("lbl_outlet_types".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 4.v, right: 1.h),
                                        child: Text("lbl_retailer".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))
                                  ])),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(vertical: 12.v),
                              decoration: AppDecoration.outlineBlack,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        child: Text("lbl_outlet_category".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: 1.h, bottom: 1.v),
                                        child: Text("lbl_class_a".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))
                                  ])),
                          Container(
                              height: 50.v,
                              width: 340.h,
                              decoration: AppDecoration.outlineBlack,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 12.v),
                                        child: Text("lbl_balance".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12.v),
                                        decoration: AppDecoration.outlineBlack,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 3.v),
                                                  child: Text("lbl_balance".tr,
                                                      style: CustomTextStyles
                                                          .bodyLarge18)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 3.v, right: 1.h),
                                                  child: Text("lbl_2174_00".tr,
                                                      style: CustomTextStyles
                                                          .bodyLarge18))
                                            ])))
                              ])),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(vertical: 12.v),
                              decoration: AppDecoration.outlineBlack,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text("lbl_credit_limit".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18)),
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text("lbl_0_00".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))
                                  ])),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(vertical: 10.v),
                              decoration: AppDecoration.outlineBlack,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 6.v),
                                        child: Text("msg_remaining_credit".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18)),
                                    Padding(
                                        padding: EdgeInsets.only(top: 4.v),
                                        child: Text("lbl_2174_002".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))
                                  ])),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(vertical: 10.v),
                              decoration: AppDecoration.outlineBlack,
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 6.v),
                                        child: Text("lbl_payee".tr,
                                            style:
                                            CustomTextStyles.bodyLarge18)),
                                    Padding(
                                        padding: EdgeInsets.only(top: 4.v),
                                        child: Text("lbl_no".tr,
                                            style:
                                            CustomTextStyles.bodyLarge18))
                                  ])),

                        ])))),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.info),
                    onPressed: () {
                      Navigator.pop(context);
                      // Handle info button tap
                      // You can add the logic to display information here.
                    },
                    color: _currentIndex == 0
                        ? Colors.blue // Highlighted color
                        : Colors.grey,
                  ),
                  IconButton(
                    icon: Icon(Icons.history),
                    onPressed: () {
                      // Handle history button tap
                      // Navigate to the history page (xyz)
                      Navigator.pushNamed(context, AppRoutes.iphone14TwoScreen);
                    },
                    color: _currentIndex == 1
                        ? Colors.blue // Highlighted color
                        : Colors.grey,
                  ),
                ],
              ),
            ),
            floatingActionButton: CustomFloatingButton(
              onTap: (){
                Navigator.pushNamed(context, AppRoutes.iphone14ThreeTabContainerScreen);
              },
                height: 55,
                width: 55,
                backgroundColor: theme.colorScheme.primary,
                child: CustomImageView(
                    svgPath: ImageConstant.imgMaterialsymbolsadd,
                    height: 27.5.v,
                    width: 27.5.h))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
