import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
    this.noMargin,
  }) : super(key: key);
  final String title;
  final bool? noMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: noMargin == true || noMargin == null
          ? EdgeInsets.symmetric(horizontal: 33.w)
          : EdgeInsets.zero,
      alignment: Alignment.centerRight,
      child: Text(
        title,
        style: GoogleFonts.tajawal(
          fontSize: 16.sp,
          color: kTextColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
