import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_elevated_button.dart';

class Iphone14TwentyfourPage extends StatefulWidget {
  const Iphone14TwentyfourPage({Key? key}) : super(key: key);

  @override
  Iphone14TwentyfourPageState createState() => Iphone14TwentyfourPageState();
}

class Iphone14TwentyfourPageState extends State<Iphone14TwentyfourPage>
    with AutomaticKeepAliveClientMixin<Iphone14TwentyfourPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 25.h, top: 35.v, right: 25.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                                height: 50.v,
                                width: 340.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 1.h),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 12.v),
                                              decoration:
                                                  AppDecoration.outlineBlack,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 2.v),
                                                    Text("lbl_so".tr,
                                                        style: CustomTextStyles
                                                            .bodyLarge18)
                                                  ]))),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgRaphaelarrowdown,
                                          height: 28.adaptSize,
                                          width: 28.adaptSize,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(bottom: 7.v))
                                    ])),
                            SizedBox(
                                height: 50.v,
                                width: 340.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 1.h),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 12.v),
                                              decoration:
                                                  AppDecoration.outlineBlack,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 2.v),
                                                    Text("lbl_asm".tr,
                                                        style: CustomTextStyles
                                                            .bodyLarge18)
                                                  ]))),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgRaphaelarrowdown,
                                          height: 28.adaptSize,
                                          width: 28.adaptSize,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(bottom: 7.v))
                                    ])),
                            SizedBox(
                                height: 50.v,
                                width: 340.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 1.h),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 12.v),
                                              decoration:
                                                  AppDecoration.outlineBlack,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 2.v),
                                                    Text("lbl_ase".tr,
                                                        style: CustomTextStyles
                                                            .bodyLarge18)
                                                  ]))),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgRaphaelarrowdown,
                                          height: 28.adaptSize,
                                          width: 28.adaptSize,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(bottom: 7.v))
                                    ])),
                            SizedBox(
                                height: 50.v,
                                width: 340.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 1.h),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 12.v),
                                              decoration:
                                                  AppDecoration.outlineBlack,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 2.v),
                                                    Text("lbl_asm".tr,
                                                        style: CustomTextStyles
                                                            .bodyLarge18)
                                                  ]))),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgRaphaelarrowdown,
                                          height: 28.adaptSize,
                                          width: 28.adaptSize,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(bottom: 7.v))
                                    ])),
                            SizedBox(height: 42.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("lbl_beat_selection".tr,
                                    style: CustomTextStyles
                                        .titleMediumBlack900Medium19)),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 10.v),
                                decoration: AppDecoration.outlineBlack,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 7.v),
                                          child: Text("lbl_monday".tr,
                                              style: CustomTextStyles
                                                  .bodyLarge18)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCarbonaddfilled,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 5.v, right: 33.h))
                                    ])),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 7.v),
                                decoration: AppDecoration.outlineBlack,
                                child: Text("lbl_1203_beat1".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 7.v),
                                decoration: AppDecoration.outlineBlack,
                                child: Text("lbl_1204_beat7".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 10.v),
                                decoration: AppDecoration.outlineBlack,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 7.v),
                                          child: Text("lbl_tuesday".tr,
                                              style: CustomTextStyles
                                                  .bodyLarge18)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCarbonaddfilled,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 5.v, right: 34.h))
                                    ])),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 7.v),
                                decoration: AppDecoration.outlineBlack,
                                child: Text("lbl_1203_beat2".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 7.v),
                                decoration: AppDecoration.outlineBlack,
                                child: Text("lbl_1204_beat8".tr,
                                    style: theme.textTheme.bodyMedium)),
                            GestureDetector(
                                onTap: () {
                                  onTapDesignation(context);
                                },
                                child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.v),
                                    decoration: AppDecoration.outlineBlack,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 7.v),
                                              child: Text("lbl_wednesday".tr,
                                                  style: CustomTextStyles
                                                      .bodyLarge18)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCarbonaddfilled,
                                              height: 25.adaptSize,
                                              width: 25.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 5.v, right: 33.h))
                                        ]))),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 10.v),
                                decoration: AppDecoration.outlineBlack,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 7.v),
                                          child: Text("lbl_thursday".tr,
                                              style: CustomTextStyles
                                                  .bodyLarge18)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCarbonaddfilled,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 5.v, right: 33.h))
                                    ])),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 10.v),
                                decoration: AppDecoration.outlineBlack,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 7.v),
                                          child: Text("lbl_friday".tr,
                                              style: CustomTextStyles
                                                  .bodyLarge18)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCarbonaddfilled,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 5.v, right: 33.h))
                                    ])),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 10.v),
                                decoration: AppDecoration.outlineBlack,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 7.v),
                                          child: Text("lbl_saturday".tr,
                                              style: CustomTextStyles
                                                  .bodyLarge18)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCarbonaddfilled,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 5.v, right: 32.h))
                                    ])),
                            SizedBox(height: 50.v),
                            CustomElevatedButton(
                                width: 150.h,
                                text: "lbl_save".tr,
                                onTap: () {
                                  onTapSave(context);
                                },
                                alignment: Alignment.center)
                          ]))
                ])))));
  }

  /// Navigates to the iphone14TwentyfiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14TwentyfiveScreen.
  onTapDesignation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwentyfiveScreen);
  }

  /// Navigates to the iphone14TwentytwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14TwentytwoScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwentytwoScreen);
  }
}
