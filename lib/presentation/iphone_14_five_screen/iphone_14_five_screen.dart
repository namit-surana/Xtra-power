import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:namit_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:namit_s_application1/widgets/custom_drop_down.dart';
import 'package:namit_s_application1/widgets/custom_floating_button.dart';
import 'package:namit_s_application1/widgets/custom_text_form_field.dart';
import 'package:table_calendar/table_calendar.dart';
import '../event_calendar.dart';
import '../iphone_14_fourteen_screen/iphone_14_fourteen_screen.dart';

// ignore_for_file: must_be_immutable
class Iphone14FiveScreen extends StatefulWidget {
  Iphone14FiveScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14FiveScreen> createState() => _Iphone14FiveScreenState();
}

class _Iphone14FiveScreenState extends State<Iphone14FiveScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> dropdownItemList = [];

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  TextEditingController _dateController = TextEditingController();
  TextEditingController testoutletController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            key: scaffoldKey,
            drawer: const Iphone14FourteenScreen(),
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 45.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgStreamlineinte,
                    margin:
                        EdgeInsets.only(left: 25.h, top: 71.v, bottom: 14.v),
                    onTap: () {
                      scaffoldKey.currentState?.openDrawer();
                    }),
                title: AppbarTitle(
                    text: "lbl_distributor".tr,
                    margin:
                        EdgeInsets.only(left: 33.h, top: 70.v, bottom: 14.v)),
                styleType: Style.bgFill),
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                        width: 340.h,
                        margin:
                            EdgeInsets.only(left: 25.h, top: 20.v, right: 25.h),
                        padding: EdgeInsets.symmetric(vertical: 9.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 9.v),
                              Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMdilocation,
                                    height: 30.v,
                                    width: 27.h),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 12.h, top: 4.v),
                                    child: Text("lbl_ambajogai".tr,
                                        style:
                                            CustomTextStyles.titleLargeRegular))
                              ]),
                              SizedBox(height: 9.v),
                              Text("Total : 14 Distributors",
                                  style: CustomTextStyles.bodyLarge18)
                            ])),
                    InkWell(
                      onTap: () {
                        // Handle the button tap here
                        Navigator.pushNamed(context, AppRoutes.iphone14OnePage);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 1.0, // Border width
                          ),
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.h, vertical: 22.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 25.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "msg_4482_test_outlet".tr,
                              style: theme.textTheme.bodyLarge!,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              // You can change the icon to whatever you want
                              color: Colors
                                  .black, // You can customize the icon color
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle the button tap here
                        Navigator.pushNamed(context, AppRoutes.iphone14OnePage);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 1.0, // Border width
                          ),
                          borderRadius:
                          BorderRadius.circular(10.0), // Border radius
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.h, vertical: 22.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 25.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "msg_4482_test_outlet".tr,
                              style: theme.textTheme.bodyLarge!,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              // You can change the icon to whatever you want
                              color: Colors
                                  .black, // You can customize the icon color
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle the button tap here
                        Navigator.pushNamed(context, AppRoutes.iphone14OnePage);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 1.0, // Border width
                          ),
                          borderRadius:
                          BorderRadius.circular(10.0), // Border radius
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.h, vertical: 22.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 25.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "msg_4482_test_outlet".tr,
                              style: theme.textTheme.bodyLarge!,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              // You can change the icon to whatever you want
                              color: Colors
                                  .black, // You can customize the icon color
                            ),
                          ],
                        ),
                      ),
                    ),InkWell(
                      onTap: () {
                        // Handle the button tap here
                        Navigator.pushNamed(context, AppRoutes.iphone14OnePage);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 1.0, // Border width
                          ),
                          borderRadius:
                          BorderRadius.circular(10.0), // Border radius
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.h, vertical: 22.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 25.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "msg_4482_test_outlet".tr,
                              style: theme.textTheme.bodyLarge!,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              // You can change the icon to whatever you want
                              color: Colors
                                  .black, // You can customize the icon color
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle the button tap here
                        Navigator.pushNamed(context, AppRoutes.iphone14OnePage);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 1.0, // Border width
                          ),
                          borderRadius:
                          BorderRadius.circular(10.0), // Border radius
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.h, vertical: 22.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 25.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "msg_4482_test_outlet".tr,
                              style: theme.textTheme.bodyLarge!,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              // You can change the icon to whatever you want
                              color: Colors
                                  .black, // You can customize the icon color
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle the button tap here
                        Navigator.pushNamed(context, AppRoutes.iphone14OnePage);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 1.0, // Border width
                          ),
                          borderRadius:
                          BorderRadius.circular(10.0), // Border radius
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.h, vertical: 22.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 25.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "msg_4482_test_outlet".tr,
                              style: theme.textTheme.bodyLarge!,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              // You can change the icon to whatever you want
                              color: Colors
                                  .black, // You can customize the icon color
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])),
            ),
            floatingActionButton: CustomFloatingButton(
                height: 55,
                width: 55,
                backgroundColor: theme.colorScheme.primary,
                child: CustomImageView(
                    svgPath: ImageConstant.imgMaterialsymbolsadd,
                    height: 27.5.v,
                    width: 27.5.h))));
  }

  /// Navigates to the iphone14FourteenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14FourteenScreen.
  onTapStreamlineinte(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14FourteenScreen);
  }
}
