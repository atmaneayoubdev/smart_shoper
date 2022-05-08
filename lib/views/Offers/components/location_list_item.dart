import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class LocationList extends StatefulWidget {
  const LocationList({
    Key? key,
  }) : super(key: key);

  @override
  State<LocationList> createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          isVisible = !isVisible;
        });
      }),
      child: Container(
        //height: 64.h,
        width: 391.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          border: Border.all(color: kGreyColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/loc_icon.svg",
                      height: 11.h,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      " الرياض",
                      style: GoogleFonts.tajawal(
                        height: 2,
                        fontSize: 16.sp,
                        color: kTextColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    if (isVisible)
                      Text(
                        " (الاقرب لك حسب موقعك)",
                        style: GoogleFonts.tajawal(
                          height: 2,
                          fontSize: 16.sp,
                          color: kDarkGreyColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                  ],
                ),
                SvgPicture.asset(
                  isVisible
                      ? "assets/icons/not_visible.svg"
                      : "assets/icons/visible.svg",
                  height: 10.h,
                ),
              ],
            ),
            if (isVisible)
              Text(
                " 2483 حي ، 7251 مدائن الفهد ، جده 22347 الديه",
                style: GoogleFonts.tajawal(
                  fontSize: 14.sp,
                  color: kDarkGreyColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
