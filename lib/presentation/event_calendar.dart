import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import '../core/utils/image_constant.dart';
import '../widgets/app_bar/appbar_image_1.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import 'iphone_14_fourteen_screen/iphone_14_fourteen_screen.dart';

class EventCalendarScreen extends StatefulWidget {
  const EventCalendarScreen({Key? key}) : super(key: key);

  @override
  State<EventCalendarScreen> createState() => _EventCalendarScreenState();
}

class _EventCalendarScreenState extends State<EventCalendarScreen> {
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

    loadPreviousEvents();
  }

  loadPreviousEvents() {
    mySelectedEvents = {
      "2022-09-13": [
        {"eventDescp": "11", "eventTitle": "111"},
        {"eventDescp": "22", "eventTitle": "22"}
      ],
      "2022-09-30": [
        {"eventDescp": "22", "eventTitle": "22"}
      ],
      "2022-09-20": [
        {"eventTitle": "ss", "eventDescp": "ss"}
      ]
    };
  }


  List _listOfDayEvents(DateTime dateTime) {
    if (mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)] != null) {
      return mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!;
    } else {
      return [];
    }
  }

  _showAddEventDialog() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Add New Outlet',
          textAlign: TextAlign.center,
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'ID',
              ),
            ),
            TextField(
              controller: descpController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(labelText: 'Outlet_Name'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            child: const Text('Add Event'),
            onPressed: () {
              if (titleController.text.isEmpty &&
                  descpController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Required title and description'),
                    duration: Duration(seconds: 2),
                  ),
                );
                //Navigator.pop(context);
                return;
              } else {
                print(titleController.text);
                print(descpController.text);

                setState(() {
                  if (mySelectedEvents[
                          DateFormat('yyyy-MM-dd').format(_selectedDate!)] !=
                      null) {
                    mySelectedEvents[
                            DateFormat('yyyy-MM-dd').format(_selectedDate!)]
                        ?.add({
                      "eventTitle": titleController.text,
                      "eventDescp": descpController.text,
                    });
                  } else {
                    mySelectedEvents[
                        DateFormat('yyyy-MM-dd').format(_selectedDate!)] = [
                      {
                        "eventTitle": titleController.text,
                        "eventDescp": descpController.text,
                      }
                    ];
                  }
                });

                print(
                    "New Event for backend developer ${json.encode(mySelectedEvents)}");
                titleController.clear();
                descpController.clear();
                Navigator.pop(context);
                return;
              }
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              text: "lbl_outlets".tr,
              margin:
              EdgeInsets.only(left: 33.h, top: 70.v, bottom: 14.v)),
         // styleType: Style.bgFill
      ),
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
                    leading: const Icon(
                      Icons.done,
                      color: Colors.teal,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Outlet_Id :   ${myEvents['eventTitle']}'),
                    ),
                    subtitle: Text('Name:   ${myEvents['eventDescp']}'),
                    trailing: const Icon(
                      Icons.arrow_forward,
                      // You can change the icon to whatever you want
                      color: Colors
                          .black, // You can customize the icon color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddEventDialog(),
        label: const Text('Add Outlet'),
      ),
    );
  }
}
