import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../../constants.dart';

class CodeWidget extends StatelessWidget {
  const CodeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMaterialModalBottomSheet(
          context: context,
          builder: (context) => ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: Container(
              height: 600.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 30.w),
              child: Stack(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      "assets/images/big_coupon.svg",
                      height: 464.h,
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60.h,
                        ),
                        Image.asset(
                          "assets/images/handm.png",
                          height: 31.h,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 200.w,
                          child: Text(
                            "  كود خصم 30% من H&M علي الملابس الررجالي",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.tajawal(
                              fontSize: 16.sp,
                              color: kTextColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 36.h,
                        ),
                        SizedBox(
                          height: 61.h,
                          child: Stack(
                            children: [
                              Center(
                                child: SvgPicture.asset(
                                  "assets/icons/coupon.svg",
                                  height: 61.h,
                                ),
                              ),
                              Center(
                                child: Text(
                                  "BT4577",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 24.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "30% خصم",
                          style: GoogleFonts.tajawal(
                            fontSize: 16.sp,
                            color: kTextColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 80.h,
                        ),
                        Text(
                          "نسخ الكود",
                          style: GoogleFonts.tajawal(
                            fontSize: 16.sp,
                            color: kBlueColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: Container(
        height: 151.h,
        width: 391.w,
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 4.h,
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
          color: kLightGreyColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/coupon2.svg",
                  height: 36.h,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "خصم 30% علي الملابس الررجالي",
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.tajawal(
                    fontSize: 16.sp,
                    color: kTextColor,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            SvgPicture.asset(
              "assets/icons/hiden_code.svg",
              width: 274.h,
              height: 43.w,
            ),
            SizedBox(
              height: 13.h,
            ),
            const DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: kDarkGreyColor,
            ),
            SizedBox(
              height: 7.h,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/cachback.svg",
                  height: 34.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "كاش باك " "4.5",
                  style: GoogleFonts.tajawal(
                    fontSize: 16.sp,
                    color: kTextColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
