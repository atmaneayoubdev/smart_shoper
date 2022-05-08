import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/constants.dart';

class LocalsWidget extends StatelessWidget {
  const LocalsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: 387.w,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 13.w,
              ),
              SvgPicture.asset(
                "assets/icons/store.svg",
                height: 20.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                " الفروع",
                style: GoogleFonts.tajawal(
                  height: 2,
                  fontSize: 16.sp,
                  color: kTextColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                " (25) ",
                style: GoogleFonts.tajawal(
                  height: 2,
                  fontSize: 16.sp,
                  color: kBlueColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Container(
            width: 58.w,
            height: 75.h,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 28, 15, 84),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                bottomLeft: Radius.circular(12.r),
              ),
            ),
            child: const Center(
                child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
          ),
        ],
      ),
    );
  }
}
