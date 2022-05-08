import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/Common/gradiant_button.dart';

import '../../../constants.dart';

class ChangeNameView extends StatefulWidget {
  const ChangeNameView({Key? key}) : super(key: key);
  static const String routeName = '/change_name_view';

  @override
  State<ChangeNameView> createState() => _ChangeNameViewState();
}

class _ChangeNameViewState extends State<ChangeNameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "تعديل الاسم الشخصي",
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
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "الاسم الاول",
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
                              width: 177.w,
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
                          width: 26.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "الاسم الاخير",
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
                              width: 177.w,
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
