import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: Container(
        height: 36.h,
        width: 36.w,
        decoration: isActive
            ? const BoxDecoration(
                shape: BoxShape.circle,
                gradient: kVerticalGradiant,
              )
            : BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: kBlueColor,
                ),
              ),
        child: Center(
          child: isActive
              ? SvgPicture.asset(
                  "assets/icons/bell_icon.svg",
                  height: 21.h,
                  color: Colors.white,
                )
              : SvgPicture.asset(
                  "assets/icons/bell_icon.svg",
                  height: 21.h,
                ),
        ),
      ),
    );
  }
}
