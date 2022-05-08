import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shoper/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionHeader extends StatelessWidget {
  const SubscriptionHeader({
    Key? key,
    required this.isPaying,
  }) : super(key: key);
  final bool isPaying;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      color: const Color.fromRGBO(243, 245, 247, 1),
      height: 125.h,
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Container(
              height: 34.h,
              width: 34.w,
              decoration: isPaying
                  ? BoxDecoration(
                      border: Border.all(color: kDarkGreyColor),
                      shape: BoxShape.circle)
                  : const BoxDecoration(
                      gradient: kVerticalGradiant, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  "1",
                  style: GoogleFonts.tajawal(
                    height: 2,
                    fontSize: 16.sp,
                    color: isPaying ? kDarkGreyColor : Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 18.w,
            ),
            Text(
              "اختر الباقه",
              style: GoogleFonts.tajawal(
                height: 2,
                fontSize: 23.sp,
                color: isPaying ? kDarkGreyColor : kTextColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 34.h,
              width: 34.w,
              decoration: !isPaying
                  ? BoxDecoration(
                      border: Border.all(color: kDarkGreyColor),
                      shape: BoxShape.circle)
                  : const BoxDecoration(
                      gradient: kVerticalGradiant, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  "2",
                  style: GoogleFonts.tajawal(
                    height: 2,
                    fontSize: 16.sp,
                    color: isPaying ? Colors.white : kDarkGreyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 18.w,
            ),
            Text(
              "الدفع",
              style: GoogleFonts.tajawal(
                height: 2,
                fontSize: 23.sp,
                color: isPaying ? kTextColor : kDarkGreyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
