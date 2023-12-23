import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  const UserprofilerowItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_12".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "lbl_1234_beat1".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgPlus,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              right: 4.h,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }
}
