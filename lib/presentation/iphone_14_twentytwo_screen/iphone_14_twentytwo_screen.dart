import '../iphone_14_twentytwo_screen/widgets/retailerprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:namit_s_application1/widgets/app_bar/custom_app_bar.dart';

class Iphone14TwentytwoScreen extends StatelessWidget {
  const Iphone14TwentytwoScreen({Key? key}) : super(key: key);

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
                    text: "msg_pending_approval".tr,
                    margin:
                        EdgeInsets.only(left: 29.h, top: 71.v, bottom: 13.v)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin: EdgeInsets.fromLTRB(25.h, 71.v, 25.h, 14.v))
                ],
                styleType: Style.bgFill),
            body: Padding(
                padding: EdgeInsets.only(left: 25.h, top: 29.v, right: 25.h),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 17.v);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return RetailerprofileItemWidget(
                          onTapRowretailername: () {
                        onTapRowretailername(context);
                      });
                    }))));
  }

  /// Navigates to the iphone14TwentythreeTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14TwentythreeTabContainerScreen.
  onTapRowretailername(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.iphone14TwentythreeTabContainerScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
