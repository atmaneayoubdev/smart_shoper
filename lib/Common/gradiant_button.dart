import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class GradiantButton extends StatelessWidget {
  const GradiantButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          30.r,
        ),
        gradient: kHorizontalrGradiant,
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.tajawal(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
