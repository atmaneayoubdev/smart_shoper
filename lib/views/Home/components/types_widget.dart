import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class TypesWidget extends StatelessWidget {
  const TypesWidget({
    Key? key,
    required this.typeList,
  }) : super(key: key);

  final List<String> typeList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      width: double.infinity,
      child: ListView.separated(
        padding: EdgeInsets.only(right: 33.w),
        scrollDirection: Axis.horizontal,
        itemCount: typeList.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 53.w,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SvgPicture.asset(
                "assets/icons/home_list_${index + 1}.svg",
              ),
              SizedBox(
                height: 5.h,
              ),
              FittedBox(
                child: Text(
                  typeList[index],
                  style: GoogleFonts.tajawal(
                    fontSize: 14.sp,
                    color: kTextColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
