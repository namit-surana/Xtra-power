import '../iphone_14_nineteen_page/widgets/userprofilestac_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_drop_down.dart';
import 'package:namit_s_application1/widgets/custom_search_view.dart';

class Iphone14NineteenPage extends StatefulWidget {
  const Iphone14NineteenPage({Key? key}) : super(key: key);

  @override
  Iphone14NineteenPageState createState() => Iphone14NineteenPageState();
}

// ignore_for_file: must_be_immutable
class Iphone14NineteenPageState extends State<Iphone14NineteenPage>
    with AutomaticKeepAliveClientMixin<Iphone14NineteenPage> {
  TextEditingController searchController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 25.h, top: 24.v, right: 25.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CustomSearchView(
                                        controller: searchController,
                                        hintText: "msg_search_by_name_or".tr,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                14.h, 17.v, 15.h, 13.v),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgSearchBlack900)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 50.v),
                                        suffix: Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.h),
                                            child: IconButton(
                                                onPressed: () {
                                                  searchController.clear();
                                                },
                                                icon: Icon(Icons.clear,
                                                    color: Colors
                                                        .grey.shade600)))),
                                    SizedBox(height: 42.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 7.v, bottom: 6.v),
                                              child: Text("lbl_filter".tr,
                                                  style: CustomTextStyles
                                                      .bodyLarge17)),
                                          CustomDropDown(
                                              width: 94.h,
                                              icon: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      8.h, 8.v, 11.h, 7.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgRaphaelarrowdown)),
                                              margin:
                                                  EdgeInsets.only(left: 8.h),
                                              hintText: "lbl_name".tr,
                                              items: dropdownItemList,
                                              borderDecoration:
                                                  DropDownStyleHelper
                                                      .fillPrimary,
                                              filled: true,
                                              fillColor:
                                                  theme.colorScheme.primary,
                                              onChanged: (value) {})
                                        ]),
                                    SizedBox(height: 106.v),
                                    Expanded(
                                        child: ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(height: 17.v);
                                            },
                                            itemCount: 4,
                                            itemBuilder: (context, index) {
                                              return UserprofilestacItemWidget(
                                                  onTapRowusername: () {
                                                onTapRowusername(context);
                                              });
                                            }))
                                  ]))))
                ])))));
  }

  /// Navigates to the iphone14TwentythreeTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14TwentythreeTabContainerScreen.
  onTapRowusername(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.iphone14TwentythreeTabContainerScreen);
  }
}
