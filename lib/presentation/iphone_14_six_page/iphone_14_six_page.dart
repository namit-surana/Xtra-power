import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class Iphone14SixPage extends StatefulWidget {
  const Iphone14SixPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone14SixPageState createState() => Iphone14SixPageState();
}

class Iphone14SixPageState extends State<Iphone14SixPage>
    with AutomaticKeepAliveClientMixin<Iphone14SixPage> {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

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
                    top: 8.v,
                    right: 25.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8.v,
                              bottom: 1.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_1_fan_regulator".tr,
                                  style: CustomTextStyles.bodyMedium15,
                                ),
                                SizedBox(height: 23.v),
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
                                      margin: EdgeInsets.only(left: 7.h),
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
                                      margin: EdgeInsets.only(left: 14.h),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgBookmark,
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                                margin: EdgeInsets.only(right: 6.h),
                              ),
                              SizedBox(height: 17.v),
                              Text(
                                "lbl_price_9000_0".tr,
                                style: CustomTextStyles.bodyMedium15,
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                "lbl_mrp_1000_0".tr,
                                style: CustomTextStyles.bodyMedium15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12.v),
                      CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 3.v, 11.h, 2.v),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgRaphaelarrowdown,
                          ),
                        ),
                        hintText: "msg_please_select_a".tr,
                        hintStyle: CustomTextStyles.bodySmallBlack900,
                        items: dropdownItemList,
                        borderDecoration: DropDownStyleHelper.outlineBlackTL5,
                        onChanged: (value) {},
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
