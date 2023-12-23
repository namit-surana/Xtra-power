import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_elevated_button.dart';

class Iphone14TwentythreePage extends StatefulWidget {
  const Iphone14TwentythreePage({Key? key}) : super(key: key);

  @override
  Iphone14TwentythreePageState createState() => Iphone14TwentythreePageState();
}

class Iphone14TwentythreePageState extends State<Iphone14TwentythreePage>
    with AutomaticKeepAliveClientMixin<Iphone14TwentythreePage> {
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
                          EdgeInsets.only(left: 25.h, top: 28.v, right: 25.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 6.h, right: 45.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 1.v),
                                          child: Text("lbl_name".tr,
                                              style:
                                                  theme.textTheme.bodyMedium)),
                                      Text("lbl_designation".tr,
                                          style: theme.textTheme.bodyMedium)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 6.h, top: 13.v, right: 83.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_user_id".tr,
                                          style: theme.textTheme.bodyMedium),
                                      Text("lbl_grade".tr,
                                          style: theme.textTheme.bodyMedium)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 6.h, top: 14.v, right: 58.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_phone".tr,
                                          style: theme.textTheme.bodyMedium),
                                      Text("lbl_bike_used".tr,
                                          style: theme.textTheme.bodyMedium)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 15.v),
                                child: Text("lbl_photo".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 15.v),
                                child: Text("lbl_address".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 14.v),
                                child: Text("lbl_e_mail".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 38.v),
                                child: Text("lbl_docs".tr,
                                    style:
                                        CustomTextStyles.titleMediumBlack900)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 8.v),
                                child: Text("lbl_pan".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h, top: 15.v),
                                child: Text("lbl_aadhar".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h, top: 54.v),
                                child: Text("lbl_additional_info".tr,
                                    style:
                                        CustomTextStyles.titleMediumBlack900)),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h, top: 15.v),
                                child: Text("lbl_date_of_join".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h, top: 16.v),
                                child: Text("lbl_year_of_exp".tr,
                                    style: theme.textTheme.bodyMedium)),
                            SizedBox(height: 26.v),
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
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 2.v),
                                                        child: Text(
                                                            "lbl_status".tr,
                                                            style: CustomTextStyles
                                                                .bodyLarge18)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 2.v,
                                                                right: 33.h),
                                                        child: Text(
                                                            "lbl_on_boarded".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodyLarge18))
                                                  ]))),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgRaphaelarrowdown,
                                          height: 28.adaptSize,
                                          width: 28.adaptSize,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(bottom: 7.v))
                                    ])),
                            SizedBox(height: 75.v),
                            CustomElevatedButton(
                                width: 150.h,
                                text: "lbl_approve".tr,
                                onTap: () {
                                  onTapApprove(context);
                                },
                                alignment: Alignment.center)
                          ]))
                ])))));
  }

  /// Navigates to the iphone14TwentytwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14TwentytwoScreen.
  onTapApprove(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwentytwoScreen);
  }
}
