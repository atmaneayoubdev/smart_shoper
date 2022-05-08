import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_shoper/constants.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget(
      {Key? key, required this.name, required this.svg, required this.type})
      : super(key: key);
  final String name;
  final String svg;
  final int type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 122.h,
      // width: 113.w,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: type == 2 ? 86.h : 100.h,
              width: type == 2 ? 86.w : 100.w,
              padding: EdgeInsets.symmetric(vertical: 25.h),
              decoration: type == 2
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: kLightGreyColor,
                      shape: BoxShape.rectangle,
                    )
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          kgreenColor.withOpacity(0.1),
                          kBlueColor.withOpacity(0.1),
                        ],
                      ),
                      shape: BoxShape.rectangle,
                    ),
              child: FittedBox(
                child: Center(
                  child: SvgPicture.asset(
                    svg,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            FittedBox(
              child: Text(
                name,
                style: GoogleFonts.tajawal(
                  fontSize: 14.sp,
                  color: kTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ]),
    );
  }
}
