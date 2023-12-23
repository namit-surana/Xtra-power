import '../iphone_14_seven_screen/widgets/productlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:namit_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:namit_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class Iphone14SevenScreen extends StatelessWidget {
  Iphone14SevenScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                    text: "lbl_orders".tr,
                    margin:
                        EdgeInsets.only(left: 29.h, top: 70.v, bottom: 14.v)),
                styleType: Style.bgFill),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 44.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 25.h, right: 25.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomSearchView(
                                        controller: searchController,
                                        hintText: "msg_search_by_name_or".tr,
                                        hintStyle: CustomTextStyles
                                            .bodyLargeBlack900_1,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                14.h, 20.v, 11.h, 15.v),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSearch)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 59.v),
                                        suffix: Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.h),
                                            child: IconButton(
                                                onPressed: () {
                                                  searchController.clear();
                                                },
                                                icon: Icon(Icons.clear,
                                                    color:
                                                        Colors.grey.shade600))),
                                        contentPadding: EdgeInsets.only(
                                            top: 19.v,
                                            right: 30.h,
                                            bottom: 19.v)),
                                    SizedBox(height: 64.v),
                                    ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: 13.v);
                                        },
                                        itemCount: 2,
                                        itemBuilder: (context, index) {
                                          return ProductlistItemWidget();
                                        }),
                                    SizedBox(height: 25.v),
                                    Divider(),
                                    SizedBox(height: 20.v),
                                    Text("lbl_total".tr,
                                        style: CustomTextStyles.bodyLarge18),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 9.v, right: 13.h),
                                        child: Row(children: [
                                          Text("lbl_name".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack90015),
                                          Spacer(flex: 31),
                                          Text("lbl_cases".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack90015),
                                          Spacer(flex: 30),
                                          Text("lbl_pc_s3".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack90015),
                                          Spacer(flex: 37),
                                          Text("lbl_price".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack90015)
                                        ])),
                                    SizedBox(height: 9.v),
                                    Row(children: [
                                      Text("lbl_sku01".tr,
                                          style: CustomTextStyles.bodyMedium15),
                                      Spacer(flex: 31),
                                      Text("lbl_68".tr,
                                          style: CustomTextStyles.bodyMedium15),
                                      Spacer(flex: 37),
                                      Text("lbl_65".tr,
                                          style: CustomTextStyles.bodyMedium15),
                                      Spacer(flex: 31),
                                      Text("lbl_27_000".tr,
                                          style: CustomTextStyles.bodyMedium15)
                                    ]),
                                    SizedBox(height: 2.v),
                                    Row(children: [
                                      Text("lbl_sku02".tr,
                                          style: CustomTextStyles.bodyMedium15),
                                      Spacer(flex: 30),
                                      Text("lbl_75".tr,
                                          style: CustomTextStyles.bodyMedium15),
                                      Spacer(flex: 39),
                                      Text("lbl_50".tr,
                                          style: CustomTextStyles.bodyMedium15),
                                      Spacer(flex: 30),
                                      Text("lbl_24_450".tr,
                                          style: CustomTextStyles.bodyMedium15)
                                    ]),
                                    SizedBox(height: 23.v),
                                    Divider(),
                                    SizedBox(height: 22.v),
                                    Text("lbl_summary".tr,
                                        style: CustomTextStyles.bodyLarge18),
                                    SizedBox(height: 20.v),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_pending".tr,
                                                    style: CustomTextStyles
                                                        .bodyLarge18),
                                                SizedBox(height: 7.v),
                                                Text("lbl_sku01".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15),
                                                Text("lbl_sku02".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15)
                                              ]),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 36.h, top: 29.v),
                                              child: Column(children: [
                                                Text("lbl_232".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15),
                                                Text("lbl_202".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15)
                                              ])),
                                          Spacer(),
                                          Container(
                                              height: 37.v,
                                              width: 19.h,
                                              margin:
                                                  EdgeInsets.only(top: 28.v),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Text(
                                                            "lbl_202".tr,
                                                            style: CustomTextStyles
                                                                .bodyMedium15)),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Text("lbl_16".tr,
                                                            style: CustomTextStyles
                                                                .bodyMedium15))
                                                  ]))
                                        ]),
                                    SizedBox(height: 11.v),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_delivered".tr,
                                                    style: CustomTextStyles
                                                        .bodyLarge18),
                                                SizedBox(height: 9.v),
                                                Text("lbl_sku01".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15),
                                                Text("lbl_sku02".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15)
                                              ]),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 26.h, top: 31.v),
                                              child: Column(children: [
                                                Text("lbl_232".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15),
                                                Text("lbl_202".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15)
                                              ])),
                                          Spacer(),
                                          Container(
                                              height: 37.v,
                                              width: 19.h,
                                              margin:
                                                  EdgeInsets.only(top: 30.v),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Text(
                                                            "lbl_202".tr,
                                                            style: CustomTextStyles
                                                                .bodyMedium15)),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Text("lbl_16".tr,
                                                            style: CustomTextStyles
                                                                .bodyMedium15))
                                                  ]))
                                        ])
                                  ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 25.h, right: 18.h, bottom: 14.v),
                decoration: AppDecoration.outlineBlack9003
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text("lbl_total".tr,
                              style: theme.textTheme.headlineSmall)),
                      Text("lbl_51_450".tr,
                          style: theme.textTheme.headlineSmall)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
