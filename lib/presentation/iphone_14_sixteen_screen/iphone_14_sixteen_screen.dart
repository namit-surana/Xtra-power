import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';

class Iphone14SixteenScreen extends StatelessWidget {
  const Iphone14SixteenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      height: 105.v,
                      width: double.maxFinite,
                      decoration:
                          BoxDecoration(color: theme.colorScheme.primary)),
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        onTapTxtSubmitted(context);
                      },
                      child: Text("lbl_submitted".tr,
                          style: CustomTextStyles.headlineSmallBold)),
                  SizedBox(height: 60.v),
                  Text("msg_sign_up_form_submittted".tr,
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 9.v),
                  Text("msg_you_will_be_notified".tr,
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 12.v),
                  Text("msg_after_the_team_leader".tr,
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 12.v)
                ]))));
  }

  /// Navigates to the iphone14SeventeenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14SeventeenScreen.
  onTapTxtSubmitted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14SeventeenScreen);
  }
}
