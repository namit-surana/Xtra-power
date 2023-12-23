
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_elevated_button.dart';
import 'package:namit_s_application1/widgets/custom_switch.dart';

class Iphone14NineScreen extends StatefulWidget {
  Iphone14NineScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14NineScreen> createState() => _Iphone14NineScreenState();
}

class _Iphone14NineScreenState extends State<Iphone14NineScreen> {
  bool isSelectedSwitch = false;

  File? _image;

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        isSelectedSwitch = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 13.v),
              decoration: AppDecoration.fillLightBlueE,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 56.v),
                  Text("lbl_attendance".tr, style: CustomTextStyles.bodyLarge18),
                ],
              ),
            ),
            SizedBox(height: 44.v),
            CustomImageView(
              onTap: _getImage,
              svgPath: ImageConstant.imgGroup32,
              height: 130.adaptSize,
              width: 130.adaptSize,
            ),
            SizedBox(height: 26.v),
            Text("lbl_sr_test_user_1".tr, style: CustomTextStyles.bodyLarge18),
            SizedBox(height: 12.v),
            Text("lbl_user_id_123".tr, style: CustomTextStyles.bodyLargeBlack900_3),
            SizedBox(height: 26.v),
            Text("lbl_present".tr, style: theme.textTheme.titleLarge),
            SizedBox(height: 13.v),
            CustomSwitch(
              value: isSelectedSwitch,
              onChange: (value) {
                isSelectedSwitch = value;
              },
            ),
            SizedBox(height: 26.v),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  child: Container(
                    margin: EdgeInsets.only(right: 1.h),
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    decoration: AppDecoration.outlineBlack,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 6.v),
                        Align(alignment:Alignment.centerLeft,
                            child: Text("lbl_designation".tr, style: CustomTextStyles.bodyLarge18)),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12.v),
                    child: Text("lbl_sr".tr, style: CustomTextStyles.bodyLarge18),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  child: Container(
                    margin: EdgeInsets.only(right: 1.h),
                    padding: EdgeInsets.symmetric(vertical: 12.v),
                    decoration: AppDecoration.outlineBlack,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                    Align(alignment:Alignment.centerLeft,child: Text("lbl_address".tr, style: CustomTextStyles.bodyLarge18),
                    )],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12.v),
                    child: Text("lbl_pune".tr, style: CustomTextStyles.bodyLarge18),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  child: Container(
                    margin: EdgeInsets.only(right: 1.h),
                    padding: EdgeInsets.symmetric(vertical: 12.v),
                    decoration: AppDecoration.outlineBlack,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                    Align(alignment:Alignment.centerLeft,child: Text("lbl_phone".tr, style: CustomTextStyles.bodyLarge18),
                    ) ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12.v),
                    child: Text("lbl_91_7517726412".tr, style: CustomTextStyles.bodyLarge18),
                  ),
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(left: 78.h, bottom: 1.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16.v, bottom: 15.v),
                      child: Text("lbl_leave".tr, style: theme.textTheme.titleLarge),
                    ),
                    CustomElevatedButton(
                      height: 59.v,
                      width: 195.h,
                      text: "lbl_present".tr,
                      margin: EdgeInsets.only(left: 53.h),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL20(
                        backgroundColor: isSelectedSwitch ? Colors.green : theme.colorScheme.primary,
                      ),
                      buttonTextStyle: theme.textTheme.titleLarge!,
                      onTap: () {
                        onTapPresent(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapPresent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.event_calender);
  }
}
