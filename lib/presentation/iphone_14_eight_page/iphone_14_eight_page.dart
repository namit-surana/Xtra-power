import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14EightPage extends StatefulWidget {
  const Iphone14EightPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone14EightPageState createState() => Iphone14EightPageState();
}

class Iphone14EightPageState extends State<Iphone14EightPage>
    with AutomaticKeepAliveClientMixin<Iphone14EightPage> {
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
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 29.h,
                    top: 28.v,
                    right: 37.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          right: 33.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "lbl_name".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Text(
                              "lbl_designation".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 13.v,
                          right: 71.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_user_id".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            Text(
                              "lbl_grade".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 14.v,
                          right: 46.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_phone".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            Text(
                              "lbl_bike_used".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 15.v,
                        ),
                        child: Text(
                          "lbl_photo".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 13.v,
                          right: 59.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              child: Text(
                                "lbl_address".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Text(
                              "lbl_status".tr,
                              style: CustomTextStyles.titleMediumBlack900,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 13.v,
                          right: 27.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "lbl_e_mail".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Text(
                              "lbl_today_s_beat".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_tomorrow_s_beat".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 7.v,
                          right: 68.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_docs".tr,
                              style: CustomTextStyles.titleMediumBlack900,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: Text(
                                "lbl_status".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 9.v,
                        ),
                        child: Text(
                          "lbl_pan".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "lbl_aadhar".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 54.v),
                      Text(
                        "lbl_additional_info".tr,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "lbl_date_of_join".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "lbl_year_of_exp".tr,
                        style: theme.textTheme.bodyMedium,
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
