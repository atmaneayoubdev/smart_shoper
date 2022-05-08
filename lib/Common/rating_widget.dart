import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
    required this.rating,
  }) : super(key: key);
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 32.w,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 171, 0, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            rating,
            overflow: TextOverflow.clip,
            style: GoogleFonts.tajawal(
              fontSize: 12.sp,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              "assets/icons/star.svg",
              color: Colors.white,
              height: 9.h,
            ),
          ),
        ],
      ),
    );
  }
}
