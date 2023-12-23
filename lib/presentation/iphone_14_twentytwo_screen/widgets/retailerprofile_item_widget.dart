import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class RetailerprofileItemWidget extends StatelessWidget {
  RetailerprofileItemWidget({
    Key? key,
    this.onTapRowretailername,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRowretailername;

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
            child: GestureDetector(
              onTap: () {
                onTapRowretailername?.call();
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 18.v,
                ),
                decoration: AppDecoration.outlineBlack9002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_1_retailer1".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 90.h),
                      child: Text(
                        "lbl_sr".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
