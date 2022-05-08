import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/constants.dart';

class AddReviewWidget extends StatelessWidget {
  const AddReviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      height: 59.h,
      width: 388.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: kLightGreyColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              maxLines: 1,
              style: GoogleFonts.tajawal(
                fontSize: 18.sp,
                color: kTextColor,
                fontWeight: FontWeight.normal,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "اضافه تقييم ….",
                hintStyle: GoogleFonts.tajawal(
                  fontSize: 18.sp,
                  color: kDarkGreyColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Center(
            child: SvgPicture.asset(
              "assets/icons/add_review.svg",
            ),
          ),
        ],
      ),
    );
  }
}
