import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class DistributorprofItemWidget extends StatelessWidget {
  const DistributorprofItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              decoration: AppDecoration.outlineBlack9002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                children: [
                  Text(
                    "msg_1_1234_distributor1".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 39.h),
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
    );
  }
}
