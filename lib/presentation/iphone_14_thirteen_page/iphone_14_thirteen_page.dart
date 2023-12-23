import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_elevated_button.dart';
import 'package:namit_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14ThirteenPage extends StatefulWidget {
  const Iphone14ThirteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone14ThirteenPageState createState() => Iphone14ThirteenPageState();
}

class Iphone14ThirteenPageState extends State<Iphone14ThirteenPage>
    with AutomaticKeepAliveClientMixin<Iphone14ThirteenPage> {
  TextEditingController commentController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    top: 25.v,
                    right: 25.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_pjp".tr,
                        style: CustomTextStyles.titleMediumBlack90018_2,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_total_retailer".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_total_callsmade".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "msg_total_productive".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_unique_calls".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "msg_unique_productive".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Text(
                        "lbl_non_pjp".tr,
                        style: CustomTextStyles.titleMediumBlack90018_2,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_total_callsmade".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "msg_total_productive".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_unique_calls".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "msg_unique_productive".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 89.v),
                      CustomTextFormField(
                        controller: commentController,
                        hintText: "lbl_add_comment".tr,
                        hintStyle: CustomTextStyles.bodyLargeBlack900_2,
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                        width: 150.h,
                        text: "lbl_submit".tr,
                        alignment: Alignment.center,
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
