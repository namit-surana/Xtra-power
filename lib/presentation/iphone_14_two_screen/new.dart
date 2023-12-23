import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/presentation/iphone_14_one_page/iphone_14_one_page.dart';
import 'package:namit_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:namit_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:namit_s_application1/widgets/custom_bottom_bar.dart';
import 'package:namit_s_application1/widgets/custom_outlined_button.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore_for_file: must_be_immutable
class Iphone14TwoScreen extends StatefulWidget {
  Iphone14TwoScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14TwoScreen> createState() => _Iphone14TwoScreenState();
}

class _Iphone14TwoScreenState extends State<Iphone14TwoScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  CalendarFormat _calendarFormat = CalendarFormat.week;

  DateTime _focusedDay = DateTime.now();

  DateTime? _selectedDate;

  Map<String, List> mySelectedEvents = {};

  final titleController = TextEditingController();

  final descpController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDate = _focusedDay;


  }
  List _listOfDayEvents(DateTime dateTime) {
    if (mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)] != null) {
      return mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!;
    } else {
      return [];
    }
  }
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 106.v,
                leadingWidth: double.maxFinite,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.fromLTRB(25.h, 58.v, 335.h, 18.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                styleType: Style.bgFill),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  TableCalendar(
                    firstDay: DateTime(2000),
                    lastDay: DateTime(2050),
                    focusedDay: _focusedDay,
                    calendarFormat: _calendarFormat,
                    onDaySelected: (selectedDay, focusedDay) {
                      if (!isSameDay(_selectedDate, selectedDay)) {
                        // Call `setState()` when updating the selected day
                        setState(() {
                          _selectedDate = selectedDay;
                          _focusedDay = focusedDay;
                        });
                      }
                    },
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDate, day);
                    },
                    onFormatChanged: (format) {
                      if (_calendarFormat != format) {
                        // Call `setState()` when updating calendar format
                        setState(() {
                          _calendarFormat = format;
                        });
                      }
                    },
                    onPageChanged: (focusedDay) {
                      // No need to call `setState()` here
                      _focusedDay = focusedDay;
                    },
                    eventLoader: _listOfDayEvents,
                  ),
                  ..._listOfDayEvents(_selectedDate!).map(
                        (myEvents) => InkWell(

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
                            horizontal: 20.h, vertical: 9.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 4.v),
                        child: ListTile(
                          title: Column(
                              children: [
                            SizedBox(height: 28.v),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                decoration: AppDecoration.outlineBlack900,
                                child: Column(mainAxisSize: MainAxisSize.min, children: [
                                  CustomOutlinedButton(
                                      height: 40.v,
                                      text: "msg_21_june_2023_thrusday".tr,
                                      buttonStyle: CustomButtonStyles.outlineBlack,
                                      buttonTextStyle: theme.textTheme.bodyMedium!),
                                  SizedBox(
                                      height: 41.v,
                                      width: double.maxFinite,
                                      child:
                                      Stack(alignment: Alignment.center, children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(left: 84.h),
                                                child: Text("lbl_test_outlet".tr,
                                                    style: theme.textTheme.bodyMedium))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25.h, vertical: 11.v),
                                                decoration:
                                                AppDecoration.outlineBlack9001,
                                                child: Text("lbl_4482".tr,
                                                    style: theme.textTheme.bodyMedium)))
                                      ])),
                                  SizedBox(height: 7.v),
                                  Text("lbl_sales".tr, style: theme.textTheme.titleSmall),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.h, top: 8.v, right: 25.h),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(top: 1.v),
                                                child: Text("msg_delivered_payment".tr,
                                                    style:
                                                    CustomTextStyles.bodyMedium13)),
                                            Text("lbl_order_id_2792".tr,
                                                style: CustomTextStyles.bodyMedium13)
                                          ])),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 25.h, top: 3.v),
                                          child: Text("lbl_order_id_2792".tr,
                                              style: CustomTextStyles.bodyMedium13))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.h, top: 15.v, right: 25.h),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("lbl_product_name".tr,
                                                style: theme.textTheme.bodyMedium),
                                            Padding(
                                                padding: EdgeInsets.only(left: 37.h),
                                                child: Text("lbl_price".tr,
                                                    style: theme.textTheme.bodyMedium)),
                                            Padding(
                                                padding: EdgeInsets.only(left: 21.h),
                                                child: Text("lbl_case".tr,
                                                    style: theme.textTheme.bodyMedium)),
                                            Padding(
                                                padding: EdgeInsets.only(left: 11.h),
                                                child: Text("lbl_pcs".tr,
                                                    style: theme.textTheme.bodyMedium)),
                                            Padding(
                                                padding: EdgeInsets.only(left: 29.h),
                                                child: Text("lbl_amount".tr,
                                                    style: theme.textTheme.bodyMedium))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.h, top: 17.v, right: 25.h),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("lbl_product_01".tr,
                                                style:
                                                CustomTextStyles.bodyMediumBlack900),
                                            Spacer(),
                                            Text("lbl_176_90".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumBlack90013),
                                            Padding(
                                                padding: EdgeInsets.only(left: 28.h),
                                                child: Text("lbl_1".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack90013)),
                                            Padding(
                                                padding: EdgeInsets.only(left: 37.h),
                                                child: Text("lbl_9".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack90013)),
                                            Padding(
                                                padding: EdgeInsets.only(left: 43.h),
                                                child: Text("lbl_3711_80".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack90013))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.h, top: 5.v, right: 25.h),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("lbl_product_02".tr,
                                                style:
                                                CustomTextStyles.bodyMediumBlack900),
                                            Spacer(),
                                            Text("lbl_210_00".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumBlack90013),
                                            Padding(
                                                padding: EdgeInsets.only(left: 28.h),
                                                child: Text("lbl_1".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack90013)),
                                            Padding(
                                                padding: EdgeInsets.only(left: 36.h),
                                                child: Text("lbl_8".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack90013)),
                                            Padding(
                                                padding: EdgeInsets.only(left: 38.h),
                                                child: Text("lbl_4200_00".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack90013))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(25.h, 16.v, 25.h, 7.v),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("lbl_total".tr,
                                                style: theme.textTheme.bodyLarge),
                                            Spacer(),
                                            Text("lbl_2".tr,
                                                style: theme.textTheme.bodyLarge),
                                            Padding(
                                                padding: EdgeInsets.only(left: 31.h),
                                                child: Text("lbl_17".tr,
                                                    style: theme.textTheme.bodyLarge)),
                                            Padding(
                                                padding: EdgeInsets.only(left: 34.h),
                                                child: Text("lbl_7911_11".tr,
                                                    style: theme.textTheme.bodyLarge))
                                          ]))
                                ])),
                            Spacer()
                          ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(context, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Materialsymbolsinfooutline:
        return "/";
      case BottomBarEnum.Materialsymbolshistory:
        return AppRoutes.iphone14OnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone14OnePage:
        return Iphone14OnePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
