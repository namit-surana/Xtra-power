import '../iphone_14_twentyone_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_drop_down.dart';
import 'package:namit_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class Iphone14TwentyonePage extends StatelessWidget {
  Iphone14TwentyonePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

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
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 25.h,
                        top: 25.v,
                        right: 25.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomSearchView(
                            controller: searchController,
                            hintText: "msg_search_by_name_or".tr,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(14.h, 17.v, 15.h, 13.v),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgSearchBlack900,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 50.v,
                            ),
                            suffix: Padding(
                              padding: EdgeInsets.only(
                                right: 15.h,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  searchController.clear();
                                },
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 42.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl_filter".tr,
                                  style: CustomTextStyles.bodyLarge17,
                                ),
                              ),
                              CustomDropDown(
                                width: 94.h,
                                icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(8.h, 8.v, 11.h, 7.v),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgRaphaelarrowdown,
                                  ),
                                ),
                                margin: EdgeInsets.only(left: 8.h),
                                hintText: "lbl_name".tr,
                                items: dropdownItemList,
                                borderDecoration:
                                    DropDownStyleHelper.fillPrimary,
                                filled: true,
                                fillColor: theme.colorScheme.primary,
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                          SizedBox(height: 17.v),
                          Expanded(
                            child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: 17.v,
                                );
                              },
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return UserprofileItemWidget();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
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
