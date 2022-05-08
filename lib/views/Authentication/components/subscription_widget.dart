import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shoper/constants.dart';

import '../../../Common/gradiant_button.dart';
import '../views/location_view.dart';

class SubscriptionWidget extends StatelessWidget {
  const SubscriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 645.h,
      width: 371.w,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: kGreyColor,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 3))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          43.r,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 155.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: kVerticalGradiant,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(43.r),
                topRight: Radius.circular(43.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الباقه البررونزيه",
                  style: GoogleFonts.tajawal(
                    fontSize: 23.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "320" "SR",
                      style: GoogleFonts.tajawal(
                        fontSize: 41.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "/شهريا",
                      style: GoogleFonts.tajawal(
                        fontSize: 18.sp,
                        color: kGreyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 50.h),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 23.h,
                            width: 23.w,
                            decoration: const BoxDecoration(
                                gradient: kVerticalGradiant,
                                shape: BoxShape.circle),
                            child: Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  color: Colors.white60,
                                  child: const FittedBox(
                                    child: Icon(
                                      Icons.check,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "المده" " 3 شهور",
                            style: GoogleFonts.tajawal(
                              fontSize: 16.sp,
                              color: kTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 23.h,
                            width: 23.w,
                            decoration: const BoxDecoration(
                                gradient: kVerticalGradiant,
                                shape: BoxShape.circle),
                            child: Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  color: Colors.white60,
                                  child: const FittedBox(
                                    child: Icon(
                                      Icons.check,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "عدد الكوبونات" "  66",
                            style: GoogleFonts.tajawal(
                              fontSize: 16.sp,
                              color: kTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 23.h,
                            width: 23.w,
                            decoration: const BoxDecoration(
                                gradient: kVerticalGradiant,
                                shape: BoxShape.circle),
                            child: Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  color: Colors.white60,
                                  child: const FittedBox(
                                    child: Icon(
                                      Icons.check,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "الكوبونات المتبقيه" "   20 ",
                            style: GoogleFonts.tajawal(
                              fontSize: 16.sp,
                              color: kTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 23.h,
                            width: 23.w,
                            decoration: const BoxDecoration(
                                gradient: kVerticalGradiant,
                                shape: BoxShape.circle),
                            child: Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  color: Colors.white60,
                                  child: const FittedBox(
                                    child: Icon(
                                      Icons.check,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "صالحه حتي تاريخ" "  11 /4 /2022",
                            style: GoogleFonts.tajawal(
                              fontSize: 16.sp,
                              color: kTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, LocationView.routeName);
                      },
                      child: const GradiantButton(text: "اشترك الان"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
