import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14ThreePage extends StatefulWidget {
  const Iphone14ThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone14ThreePageState createState() => Iphone14ThreePageState();
}

class Iphone14ThreePageState extends State<Iphone14ThreePage>
    with AutomaticKeepAliveClientMixin<Iphone14ThreePage> {
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
                Container(
                  margin: EdgeInsets.only(
                    left: 25.h,
                    top: 14.v,
                    right: 25.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 7.v,
                          bottom: 1.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_1_fan_regulator".tr,
                              style: CustomTextStyles.bodyMedium15,
                            ),
                            SizedBox(height: 24.v),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 3.v,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "lbl_stock_in_case".tr,
                                    style: CustomTextStyles.bodyMedium15,
                                  ),
                                ),
                                Container(
                                  height: 28.v,
                                  width: 67.h,
                                  margin: EdgeInsets.only(left: 9.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray10019
                                        .withOpacity(0.47),
                                    borderRadius: BorderRadius.circular(
                                      6.h,
                                    ),
                                    border: Border.all(
                                      color: appTheme.black900,
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 14.v),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 3.v,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "lbl_stock_in_unit".tr,
                                    style: CustomTextStyles.bodyMedium15,
                                  ),
                                ),
                                Container(
                                  height: 28.v,
                                  width: 67.h,
                                  margin: EdgeInsets.only(left: 16.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray10019
                                        .withOpacity(0.47),
                                    borderRadius: BorderRadius.circular(
                                      6.h,
                                    ),
                                    border: Border.all(
                                      color: appTheme.black900,
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40.h),
                        child: Column(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgBookmark,
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                            ),
                            SizedBox(height: 17.v),
                            Text(
                              "lbl_price_9000_0".tr,
                              style: CustomTextStyles.bodyMedium15,
                            ),
                            SizedBox(height: 5.v),
                            Text(
                              "lbl_mrp_1000_0".tr,
                              style: CustomTextStyles.bodyMedium15,
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
