import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:namit_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:namit_s_application1/widgets/custom_drop_down.dart';



class Iphone14TenScreen extends StatelessWidget {
  Iphone14TenScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
         appBar: CustomAppBar(
                title: AppbarTitle(
                    text: "lbl_sign_up_form".tr,
                    margin:
                        EdgeInsets.only(left: 25.h, top: 71.v, bottom: 13.v)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgMaterialsymbolssend,
                      margin: EdgeInsets.fromLTRB(22.h, 71.v, 22.h, 10.v),
                      onTap: () {
                        onTapMaterialsymbols(context);
                      })
                ],
                styleType: Style.bgFill),
        //AppBar(
        //   title: Text("lbl_sign_up_form".tr),
        //   actions: [
        // AppbarImage(
        //               svgPath: ImageConstant.imgMaterialsymbolssend,
        //               margin: EdgeInsets.fromLTRB(22.h, 71.v, 22.h, 10.v),
        //               onTap: () {
        //                 onTapMaterialsymbols(context);
        //               })
        //   ],
        //   ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0), // Adjust the padding as needed
          child: Column(
            children: [
              // Your other widgets ...

              CustomDropDown(
                // Dropdown widget remains unchanged
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "First Name",
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "lbl_last_name".tr,
//                   child: Text("lbl_last_name".tr,
// //                                   style: CustomTextStyles.bodyLarge18)
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "lbl_phone_no".tr,
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "lbl_address".tr,
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "lbl_pincode".tr,
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "lbl_dist".tr,
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "lbl_dist".tr,
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "lbl_state".tr,
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "lbl_region".tr,
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "lbl_blood_group".tr,
                ),
                style: CustomTextStyles.bodyLarge18,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
  /// Navigates to the iphone14SixteenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14SixteenScreen.
  onTapMaterialsymbols(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14SeventeenScreen);
  }
}

