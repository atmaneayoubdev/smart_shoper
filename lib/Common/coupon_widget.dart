import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReductionWidget extends StatelessWidget {
  const ReductionWidget({
    Key? key,
    required this.rate,
  }) : super(key: key);
  final String rate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 29.h,
      width: 71.w,
      child: Center(
        child: Stack(
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/icons/coupon.svg",
                height: 29.h,
                width: 71.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Center(
                child: FittedBox(
                  child: Text(
                    "خصم%" + rate,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.tajawal(
                      fontSize: 12.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
