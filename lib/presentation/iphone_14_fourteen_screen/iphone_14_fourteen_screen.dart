import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_outlined_button.dart';

import '../app_navigation_screen/drawer_item.dart';

class Iphone14FourteenScreen extends StatelessWidget {
  const Iphone14FourteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // mediaQueryData = MediaQuery.of(context);
    return Drawer(
      child: Material(
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 10, color: Colors.grey,),
              const SizedBox(height: 40,),
              DrawerItem(
                name: "lbl_outlets".tr,
                icon: Icons.people,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: "lbl_distributor".tr,
                  icon: Icons.account_box_rounded,
                  onPressed: () => onItemPressed(context, index: 1)
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: "lbl_warehouse".tr,
                  icon: Icons.message_outlined,
                  onPressed: () => onItemPressed(context, index: 2)
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: "lbl_user_report".tr,
                  icon: Icons.favorite_outline,
                  onPressed: () => onItemPressed(context, index: 3)
              ),
              const SizedBox(height: 30,),
              const Divider(thickness: 1, height: 10, color: Colors.grey,),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: "lbl_end_of_day".tr,
                  icon: Icons.settings,
                  onPressed: () => onItemPressed(context, index: 4)
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: "lbl_profile".tr,
                  icon: Icons.logout,
                  onPressed: () => onItemPressed(context, index: 5)
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget headerWidget() {
   // const url = 'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          //backgroundImage: NetworkImage(url),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person name', style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(height: 10,),
            Text('person@email.com', style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );

  }
  /// Navigates to the iphone14EightTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14EightTabContainerScreen.
  void onItemPressed(BuildContext context, {required int index}){
    Navigator.pop(context);

    switch(index){
      case 0:
        Navigator.pushNamed(context, AppRoutes.event_calender);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => const People()));
        break;
      case 1:
        Navigator.pushNamed(context, AppRoutes.iphone14FiveScreen);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => const People()));
        break;
      case 2:
        Navigator.pushNamed(context, AppRoutes.iphone14EightTabContainerScreen);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => const People()));
        break;
      case 3:
        Navigator.pushNamed(context, AppRoutes.iphone14EightTabContainerScreen);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => const People()));
        break;
      case 4:
        Navigator.pushNamed(context, AppRoutes.iphone14EightTabContainerScreen);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => const People()));
        break;
      case 5:
        Navigator.pushNamed(context, AppRoutes.iphone14EightTabContainerScreen);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => const People()));
        break;
    }
  }
}
