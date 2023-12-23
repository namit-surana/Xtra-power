import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgMaterialsymbolsinfooutline,
      activeIcon: ImageConstant.imgMaterialsymbolsinfooutline,
      type: BottomBarEnum.Materialsymbolsinfooutline,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMaterialsymbolshistory,
      activeIcon: ImageConstant.imgMaterialsymbolshistory,
      type: BottomBarEnum.Materialsymbolshistory,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69.v,
      decoration: BoxDecoration(
        color: appTheme.blueA700.withOpacity(0.22),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15.h),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: SizedBox(
              height: 40.v,
              width: 95.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40.v,
                      width: 95.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          11.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    color: appTheme.black900,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(32.h, 5.v, 33.h, 5.v),
                  ),
                ],
              ),
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].activeIcon,
              height: 30.adaptSize,
              width: 30.adaptSize,
              color: appTheme.black900,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Materialsymbolsinfooutline,
  Materialsymbolshistory,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
