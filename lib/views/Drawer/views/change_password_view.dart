import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Common/gradiant_button.dart';
import '../../../constants.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);
  static const String routeName = '/change_password_view';

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            height: 36.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "تعديل كلمه المرور",
                  style: GoogleFonts.tajawal(
                    fontSize: 23.sp,
                    color: kTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Expanded(
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(43.r),
                    topRight: Radius.circular(43.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 54.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "كلمه المرور الحاليه",
                          style: GoogleFonts.tajawal(
                            fontSize: 14.sp,
                            color: kTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          width: 380.w,
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
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "كلمه المرور الجديده",
                          style: GoogleFonts.tajawal(
                            fontSize: 14.sp,
                            color: kTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          width: 380.w,
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
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "تاكيد كلمه المرور الجديده ",
                          style: GoogleFonts.tajawal(
                            fontSize: 14.sp,
                            color: kTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          width: 380.w,
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
                    const Spacer(),
                    SizedBox(
                      width: 320.w,
                      child: const GradiantButton(text: "حفظ"),
                    ),
                    SizedBox(
                      height: 118.h,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
