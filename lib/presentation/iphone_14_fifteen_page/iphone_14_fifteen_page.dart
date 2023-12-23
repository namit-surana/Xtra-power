import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_drop_down.dart';
import 'package:namit_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14FifteenPage extends StatefulWidget {
  const Iphone14FifteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone14FifteenPageState createState() => Iphone14FifteenPageState();
}

class Iphone14FifteenPageState extends State<Iphone14FifteenPage>
    with AutomaticKeepAliveClientMixin<Iphone14FifteenPage> {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController datetimeoneController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    top: 67.v,
                    right: 25.h,
                  ),
                  child: Column(
                    children: [
                      CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgRaphaelarrowdown,
                          ),
                        ),
                        hintText: "msg_select_a_reason".tr,
                        hintStyle: CustomTextStyles.bodyLarge18,
                        items: dropdownItemList,
                        contentPadding: EdgeInsets.symmetric(vertical: 12.v),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 17.v),
                      CustomTextFormField(
                        controller: datetimeoneController,
                        hintText: "msg_2023_25_07_11_45_30".tr,
                        hintStyle: CustomTextStyles.bodyLargeBlack900,
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(height: 50.v),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "msg_select_a_reason".tr,
                          style: CustomTextStyles.bodyLarge18,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_shop_closed".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_not_interested".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "msg_owner_not_available".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_working_with_so".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_new_db_visit".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "msg_existing_db_visit".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_meeting".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "lbl_other".tr,
                          style: theme.textTheme.bodyLarge,
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
