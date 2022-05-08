import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shoper/Common/gradiant_button.dart';
import 'package:smart_shoper/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/views/Authentication/views/phone_verification_view.dart';
import 'package:smart_shoper/views/Authentication/views/user_info.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);
  static const String routeName = '/auth';

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  bool isSignIn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 485.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: kVerticalGradiant,
                ),
              ),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(color: kLightGreyColor),
              ))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                "assets/images/auth_image.svg",
                height: 187.h,
              ),
              SizedBox(
                height: 50.h,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: isSignIn ? 446.h : 371.h,
                width: 371.w,
                padding: EdgeInsets.symmetric(
                    vertical: isSignIn ? 25.h : 44.h, horizontal: 25.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45.r),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: kLightGreyColor,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        isSignIn ? "تسجيل دخول" : "انشاء حساب",
                        style: GoogleFonts.tajawal(
                          fontSize: 23.sp,
                          color: kTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 22.h),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 59.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: kLightGreyColor,
                        ),
                        child: Row(
                          children: [
                            Center(
                              child: SvgPicture.asset(
                                "assets/icons/phone_icon.svg",
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: TextField(
                                maxLines: 1,
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color: kTextColor,
                                  fontWeight: FontWeight.normal,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "رقم الهاتف",
                                  hintStyle: GoogleFonts.tajawal(
                                    fontSize: 14.sp,
                                    color: kDarkGreyColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: isSignIn ? 17.h : 0),
                      if (isSignIn)
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 59.h,
                          width: 320.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            color: kLightGreyColor,
                          ),
                          child: Row(
                            children: [
                              Center(
                                child: SvgPicture.asset(
                                  "assets/icons/lock_icon.svg",
                                  //height: 11.h,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: TextField(
                                  maxLines: 1,
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14.sp,
                                    color: kTextColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "كلمه المرور",
                                    hintStyle: GoogleFonts.tajawal(
                                      fontSize: 14.sp,
                                      color: kDarkGreyColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(height: isSignIn ? 17.h : 0),
                      if (isSignIn)
                        Container(
                          alignment: Alignment.topRight,
                          child: Text(
                            "نسيت كلمه المرور ؟",
                            style: GoogleFonts.tajawal(
                              fontSize: 14.sp,
                              color: kTextColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      SizedBox(
                        height: isSignIn ? 60.h : 40.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          isSignIn
                              ? Navigator.pushNamed(
                                  context,
                                  UserInfo.routeName,
                                )
                              : Navigator.pushNamed(
                                  context,
                                  PhoneVerificationView.routeName,
                                );
                        },
                        child:
                            GradiantButton(text: isSignIn ? "دخول" : "تسجيل"),
                      ),
                      SizedBox(
                        height: isSignIn ? 34.h : 44.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignIn = !isSignIn;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              isSignIn
                                  ? "ليس لديك حساب ؟   "
                                  : "لديك حساب بالفعل ؟   ",
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                color: kDarkGreyColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              isSignIn ? "انشاء حساب" : "تسجيل دخول",
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                color: kTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: 155.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "استكشف التطبيق اولا",
                            style: GoogleFonts.tajawal(
                              height: 2,
                              fontSize: 18.sp,
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 31.h,
                            width: 31.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                                child: SvgPicture.asset(
                                    "assets/icons/double_shevron.svg")),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
