import 'package:flutter/material.dart';
import 'package:smart_shoper/Common/gradiant_button.dart';
import 'package:smart_shoper/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'subscription_view.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);
  static const String routeName = '/user_info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 526.h,
            decoration: const BoxDecoration(
              gradient: kVerticalGradiant,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 166.h,
              ),
              SizedBox(
                height: 115.h,
                child: SvgPicture.asset("assets/icons/splash_icon.svg"),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(vertical: 30.h, horizontal: 50.w),
                  margin: EdgeInsets.only(top: 70.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.r),
                          topRight: Radius.circular(45.r)),
                      color: Colors.white),
                  child: Form(
                      child: Column(
                    children: [
                      Text(
                        "من فضلك قم باستكمال بياناتك",
                        style: GoogleFonts.tajawal(
                          fontSize: 23.sp,
                          color: kTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 46.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "الاسم الاول",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color: kDarkGreyColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                width: 150.w,
                                height: 59.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  color: kLightGreyColor,
                                ),
                                child: TextField(
                                  maxLines: 1,
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14.sp,
                                    color: kTextColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "الاسم الاخير",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color: kDarkGreyColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                width: 150.w,
                                height: 59.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  color: kLightGreyColor,
                                ),
                                child: TextField(
                                  maxLines: 1,
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14.sp,
                                    color: kTextColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "البريد الالكتروني",
                            style: GoogleFonts.tajawal(
                              fontSize: 14.sp,
                              color: kDarkGreyColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            width: 320.w,
                            height: 59.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: kLightGreyColor,
                            ),
                            child: TextField(
                              maxLines: 1,
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                color: kTextColor,
                                fontWeight: FontWeight.normal,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "كلمه المرور",
                            style: GoogleFonts.tajawal(
                              fontSize: 14.sp,
                              color: kDarkGreyColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            width: 320.w,
                            height: 59.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: kLightGreyColor,
                            ),
                            child: TextField(
                              maxLines: 1,
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                color: kTextColor,
                                fontWeight: FontWeight.normal,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, SubscriptioinView.routeName);
                              },
                              child: const GradiantButton(text: 'تسجيل'))
                        ],
                      ))
                    ],
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
