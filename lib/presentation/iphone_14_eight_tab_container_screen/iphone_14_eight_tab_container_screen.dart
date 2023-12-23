import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/presentation/iphone_14_eight_page/iphone_14_eight_page.dart';
import 'package:namit_s_application1/presentation/iphone_14_thirteen_page/iphone_14_thirteen_page.dart';
import 'package:namit_s_application1/presentation/iphone_14_twelve_page/iphone_14_twelve_page.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:namit_s_application1/widgets/app_bar/custom_app_bar.dart';

class Iphone14EightTabContainerScreen extends StatefulWidget {
  const Iphone14EightTabContainerScreen({Key? key}) : super(key: key);

  @override
  Iphone14EightTabContainerScreenState createState() =>
      Iphone14EightTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class Iphone14EightTabContainerScreenState
    extends State<Iphone14EightTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 50.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 25.h, top: 67.v, bottom: 13.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_my_info".tr,
                    margin:
                        EdgeInsets.only(left: 28.h, top: 71.v, bottom: 13.v)),
                styleType: Style.bgFill),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 49.v,
                          width: 354.h,
                          child: TabBar(
                              controller: tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor: theme.colorScheme.onPrimary,
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
                                Tab(child: Text("lbl_my_info2".tr)),
                                Tab(child: Text("lbl_transactions".tr)),
                                Tab(child: Text("lbl_eod".tr))
                              ])),
                      SizedBox(
                          height: 690.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                Iphone14EightPage(),
                                Iphone14TwelvePage(),
                                Iphone14ThirteenPage()
                              ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
