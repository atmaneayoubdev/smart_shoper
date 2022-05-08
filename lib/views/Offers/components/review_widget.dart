import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/constants.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 391.w,
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 10.w,
      ),
      decoration: BoxDecoration(
          color: kLightGreyColor, borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80.h,
            width: 80.w,
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 5.h,
            ),
            decoration: BoxDecoration(
              color: kGreyColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Image.asset(
              "assets/images/exmple_person_image.png",
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " محمود ايمن السعيد",
                      style: GoogleFonts.tajawal(
                        fontSize: 14.sp,
                        color: kTextColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                      // width: 70.w,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 3.h,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: SvgPicture.asset(
                              "assets/icons/star.svg",
                              height: 10.h,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/clock.svg",
                      height: 14.h,
                    ),
                    SizedBox(
                      width: 6.h,
                    ),
                    Text(
                      " منذ شهر",
                      style: GoogleFonts.tajawal(
                        fontSize: 12.sp,
                        color: kDarkGreyColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/vline.svg",
                      height: 25.h,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Flexible(
                      child: Text(
                        "الخامات هناك اكثر من رائعه ووفرت كتير باستخدام الكوبون  ",
                        overflow: TextOverflow.clip,
                        maxLines: 1,
                        style: GoogleFonts.tajawal(
                          fontSize: 12.sp,
                          color: kDarkGreyColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
