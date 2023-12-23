import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_checkbox_button.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget({Key? key})
      : super(
          key: key,
        );

  bool retailerName = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "lbl_12".tr,
                style: theme.textTheme.bodyLarge,
              ),
              Expanded(
                child: CustomCheckboxButton(
                  width: 270.h,
                  text: "lbl_retailer1".tr,
                  value: retailerName,
                  margin: EdgeInsets.only(left: 14.h),
                  isRightCheck: true,
                  onChange: (value) {
                    retailerName = value;
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 12.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "lbl_sku01".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Spacer(
                  flex: 60,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_23".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "lbl_case2".tr,
                          style: CustomTextStyles.bodySmallBlack900_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(
                  flex: 39,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_10".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "lbl_pc_s2".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 3.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "lbl_sku02".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Spacer(
                  flex: 58,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_20".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "lbl_case2".tr,
                          style: CustomTextStyles.bodySmallBlack900_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(
                  flex: 41,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_15".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "lbl_pc_s2".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
