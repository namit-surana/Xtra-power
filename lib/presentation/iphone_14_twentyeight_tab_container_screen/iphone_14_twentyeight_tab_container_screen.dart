import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/presentation/iphone_14_twentyeight_page/iphone_14_twentyeight_page.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:namit_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:namit_s_application1/widgets/custom_floating_button.dart';

class Iphone14TwentyeightTabContainerScreen extends StatefulWidget {
  const Iphone14TwentyeightTabContainerScreen({Key? key}) : super(key: key);

  @override
  Iphone14TwentyeightTabContainerScreenState createState() =>
      Iphone14TwentyeightTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class Iphone14TwentyeightTabContainerScreenState
    extends State<Iphone14TwentyeightTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  late TabController group111Controller;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
    group111Controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                      height: 105.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomAppBar(
                            leadingWidth: double.maxFinite,
                            leading: AppbarImage1(
                                svgPath: ImageConstant.imgArrowleft,
                                margin: EdgeInsets.fromLTRB(
                                    25.h, 67.v, 340.h, 13.v),
                                onTap: () {
                                  onTapArrowleftone(context);
                                }),
                            styleType: Style.bgFill),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(74.h, 66.v, 25.h, 14.v),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 5.v),
                                          child: Text("lbl_team_leader".tr,
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMdibell,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          onTap: () {
                                            onTapImgMdibellone(context);
                                          })
                                    ])))
                      ])),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 50.v,
                            width: 365.h,
                            child: TabBar(
                                controller: tabviewController,
                                labelPadding: EdgeInsets.zero,
                                labelColor: appTheme.blueA700,
                                labelStyle: TextStyle(
                                    fontSize: 16.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700),
                                unselectedLabelColor: appTheme.black900,
                                unselectedLabelStyle: TextStyle(
                                    fontSize: 16.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400),
                                indicator: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: appTheme.blueA700,
                                            width: 2.h))),
                                tabs: [
                                  Tab(child: Text("lbl_distributors".tr)),
                                  Tab(child: Text("lbl_retailes".tr)),
                                  Tab(child: Text("lbl_outlets".tr))
                                ])),
                        Container(
                            height: 50.v,
                            width: 314.h,
                            margin: EdgeInsets.only(left: 25.h, top: 176.v),
                            child: TabBar(
                                controller: group111Controller,
                                labelPadding: EdgeInsets.zero,
                                labelColor: appTheme.blueA700,
                                labelStyle: TextStyle(
                                    fontSize: 16.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700),
                                unselectedLabelColor: appTheme.black900,
                                unselectedLabelStyle: TextStyle(
                                    fontSize: 16.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400),
                                indicator: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: appTheme.blueA700,
                                            width: 2.h))),
                                tabs: [
                                  Tab(child: Text("lbl_on_boarded".tr)),
                                  Tab(child: Text("lbl_on_waiting".tr)),
                                  Tab(child: Text("lbl_rejected".tr))
                                ])),
                        SizedBox(
                            height: 485.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  Iphone14TwentyeightPage(),
                                  Iphone14TwentyeightPage(),
                                  Iphone14TwentyeightPage(),
                                  Iphone14TwentyeightPage(),
                                  Iphone14TwentyeightPage(),
                                  Iphone14TwentyeightPage()
                                ]))
                      ])
                ])),
            floatingActionButton: CustomFloatingButton(
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

  /// Navigates to the iphone14TwentytwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14TwentytwoScreen.
  onTapImgMdibellone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwentytwoScreen);
  }
}
