import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shoper/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/views/Drawer/views/change_email_view.dart';
import 'package:smart_shoper/views/Drawer/views/change_name_view.dart';
import 'package:smart_shoper/views/Drawer/views/change_password_view.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: const Key("drawer"),
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 55.h,
            ),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                height: 36.h,
                width: 36.w,
                decoration: const BoxDecoration(
                  color: kLightGreyColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/arrow.svg",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 55.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 109.h,
                    width: 109.w,
                    decoration: const BoxDecoration(
                      color: kLightGreyColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/icons/drawer_contact.svg",
                        height: 31.h,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    "محمد احمد ابراهيم ",
                    style: GoogleFonts.tajawal(
                      fontSize: 18.sp,
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 61.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 5,
                      spreadRadius: 2,
                      color: kLightGreyColor,
                    ),
                  ]),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/drawer_email.svg",
                    height: 35.h,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "+9663456789 ",
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 5,
                      spreadRadius: 2,
                      color: kLightGreyColor,
                    ),
                  ]),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/drawer_phone.svg",
                    height: 35.h,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "محمد احمد ابراهيم  ",
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, ChangeNameView.routeName);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      height: 36.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: kBlueColor),
                        shape: BoxShape.circle,
                      ),
                      child: const FittedBox(
                        child: Icon(
                          Icons.chevron_right,
                          color: kBlueColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: kLightGreyColor,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/drawer_name.svg",
                    height: 35.h,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "Whieertyu@gmail.com",
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: (() => Navigator.pushNamed(
                        context, ChangeEmailView.routeName)),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      height: 36.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: kBlueColor),
                        shape: BoxShape.circle,
                      ),
                      child: const FittedBox(
                        child: Icon(
                          Icons.chevron_right,
                          color: kBlueColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 5,
                      spreadRadius: 2,
                      color: kLightGreyColor,
                    ),
                  ]),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/drawer_lock.svg",
                    height: 35.h,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 8; i++)
                        Container(
                          height: 8.h,
                          width: 8.w,
                          margin: EdgeInsets.symmetric(horizontal: 1.w),
                          decoration: const BoxDecoration(
                            color: kTextColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ChangePasswordView.routeName);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      height: 36.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: kBlueColor),
                        shape: BoxShape.circle,
                      ),
                      child: const FittedBox(
                        child: Icon(
                          Icons.chevron_right,
                          color: kBlueColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/logout.svg",
                      height: 14.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "تسجيل خروج",
                      style: GoogleFonts.tajawal(
                        fontSize: 14.sp,
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
