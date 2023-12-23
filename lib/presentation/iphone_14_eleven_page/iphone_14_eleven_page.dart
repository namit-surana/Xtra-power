import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_drop_down.dart';
import 'package:namit_s_application1/widgets/custom_elevated_button.dart';
import 'package:namit_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14ElevenPage extends StatefulWidget {
  const Iphone14ElevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone14ElevenPageState createState() => Iphone14ElevenPageState();
}

class Iphone14ElevenPageState extends State<Iphone14ElevenPage>
    with AutomaticKeepAliveClientMixin<Iphone14ElevenPage> {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController dateoneController = TextEditingController();

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
                    top: 67.v,
                    right: 25.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CustomDropDown(
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
                      ),
                      SizedBox(height: 17.v),
                      CustomTextFormField(
                        controller: dateoneController,
                        hintText: "msg_2023_25_07_11_45_30".tr,
                        hintStyle: CustomTextStyles.titleMediumBlack90018_1,
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(height: 47.v),
                      SizedBox(
                        width: 202.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_outlet_test2".tr,
                                style: CustomTextStyles.titleMediumBlack90018,
                              ),
                              TextSpan(
                                text: "lbl_final_amount_0".tr,
                                style: CustomTextStyles.titleMediumBlack90018,
                              ),
                              TextSpan(
                                text: "msg_total_pc_s_0_total".tr,
                                style: CustomTextStyles.titleMediumBlack90018,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),
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
