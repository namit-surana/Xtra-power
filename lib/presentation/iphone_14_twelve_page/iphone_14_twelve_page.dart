import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14TwelvePage extends StatefulWidget {
  const Iphone14TwelvePage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone14TwelvePageState createState() => Iphone14TwelvePageState();
}

class Iphone14TwelvePageState extends State<Iphone14TwelvePage>
    with AutomaticKeepAliveClientMixin<Iphone14TwelvePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 157.h,
                      top: 24.v,
                      right: 67.h,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    decoration: AppDecoration.outlineBlueA,
                    child: Text(
                      "msg_web_2023_june_23".tr,
                      style: CustomTextStyles.titleMediumMedium,
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
