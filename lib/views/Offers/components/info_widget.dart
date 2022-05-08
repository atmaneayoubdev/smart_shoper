import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221.h,
      width: 391.w,
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 23.h,
      ),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 5,
            spreadRadius: 2,
            color: kGreyColor,
          ),
        ],
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60.h,
                  width: 60.w,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: kGreyColor,
                  ),
                  child: Image.asset(
                    'assets/images/handm.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/store.svg",
                            height: 11.h,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "مفتوح من"
                            "  8:00 AM  "
                            "الي"
                            "  8:00 PM  ",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.tajawal(
                              fontSize: 12.sp,
                              color: kTextColor,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 20.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          gradient: kVerticalGradiant,
                        ),
                        child: FittedBox(
                          child: Text(
                            "مفتوح الان",
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.tajawal(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 90.h,
                width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: Colors.white,
                  border: Border.all(color: kGreyColor),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/star2.svg",
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      "4.7",
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.tajawal(
                        fontSize: 18.sp,
                        color: kTextColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 90.h,
                width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: Colors.white,
                  border: Border.all(color: kGreyColor),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/distance.svg",
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      "4.7",
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.tajawal(
                        fontSize: 18.sp,
                        color: kTextColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 90.h,
                width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: Colors.white,
                  border: Border.all(color: kGreyColor),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/store2.svg",
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      "4.7",
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.tajawal(
                        fontSize: 18.sp,
                        color: kTextColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
