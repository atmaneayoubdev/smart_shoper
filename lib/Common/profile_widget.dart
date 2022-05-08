import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../views/lalding_view.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Landingview.akey.currentState!.openDrawer();
      },
      child: Container(
        height: 36.h,
        width: 36.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: kBlueColor,
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            "assets/icons/drawer_contact.svg",
            height: 21.h,
          ),
        ),
      ),
    );
  }
}
