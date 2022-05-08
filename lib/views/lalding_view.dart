import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/constants.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:smart_shoper/views/Drawer/views/drawer_view.dart';
import 'package:smart_shoper/views/Settings/views/settings_view.dart';

import 'Favorite/views/favorite_view.dart';
import 'Home/views/home_view.dart';
import 'Offers/views/offers_view.dart';
import 'Stores/views/stores_view.dart';

class Landingview extends StatefulWidget {
  const Landingview({Key? key}) : super(key: key);
  static const String routeName = '/tab';
  static GlobalKey<ScaffoldState> akey = GlobalKey();

  @override
  State<Landingview> createState() => _LandingviewState();
}

class _LandingviewState extends State<Landingview> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Landingview.akey,
      drawer: const DrawerView(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 5,
              spreadRadius: 2,
              color: kGreyColor,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildNavBarItem("assets/icons/nav_home_icon.svg", 0),
            buildNavBarItem("assets/icons/nav_offers_icon.svg", 1),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: SizedBox(
                height: 81.h,
                width: MediaQuery.of(context).size.width / 5,
                //padding: EdgeInsets.symmetric(horizontal: 33.w),

                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/nav_stores_icon.svg",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildNavBarItem("assets/icons/nav_favorite.svg", 3),
            buildNavBarItem("assets/icons/nav_settings.svg", 4),
          ],
        ),
      ),
      body: _selectedIndex == 0
          ? const SafeArea(child: HomeView())
          : _selectedIndex == 1
              ? const SafeArea(child: OffersView())
              : _selectedIndex == 2
                  ? const SafeArea(child: StoresView())
                  : _selectedIndex == 3
                      ? const SafeArea(child: FavoriteView())
                      : const SafeArea(child: SettingsView()),
    );
  }

  buildNavBarItem(String icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: SizedBox(
        height: 81.h,
        width: MediaQuery.of(context).size.width / 5,
        //padding: EdgeInsets.symmetric(horizontal: 33.w),

        child: Center(
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _selectedIndex == index
                        ? SvgPicture.asset(
                            icon,
                          )
                        : SvgPicture.asset(
                            icon,
                            color: kDarkGreyColor,
                          ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      index == 0
                          ? "الرئيسيه"
                          : index == 1
                              ? "العروض"
                              : index == 2
                                  ? ""
                                  : index == 3
                                      ? "المفضله"
                                      : "الاعدادات",
                      style: GoogleFonts.tajawal(
                        fontSize: 13.sp,
                        color: _selectedIndex == index
                            ? kTextColor
                            : kDarkGreyColor,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    _selectedIndex == index
                        ? RotatedBox(
                            quarterTurns: 2,
                            child: ClipPath(
                              clipper: TriangleClipper(),
                              child: Container(
                                height: 7.h,
                                width: 27.w,
                                color: kBlueColor,
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              Container(
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
