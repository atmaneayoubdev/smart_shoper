import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants.dart';
import '../components/subscription_header.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:card_swiper/card_swiper.dart';

import '../components/subscription_widget.dart';

class SubscriptioinView extends StatefulWidget {
  const SubscriptioinView({Key? key}) : super(key: key);
  static const String routeName = '/subscription';

  @override
  State<SubscriptioinView> createState() => _SubscriptioinViewState();
}

class _SubscriptioinViewState extends State<SubscriptioinView> {
  int slideIndex = 0;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 23.h : 5.h,
      width: 5.h,
      decoration: isCurrentPage
          ? BoxDecoration(
              color: kgreenColor,
              gradient: kVerticalGradiant,
              borderRadius: BorderRadius.circular(12),
            )
          : BoxDecoration(
              color: kGreyColor,
              borderRadius: BorderRadius.circular(12),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SubscriptionHeader(isPaying: false),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "اختر الباقه المناسبه لك",
            style: GoogleFonts.tajawal(
              fontSize: 23.sp,
              color: kTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Swiper(
            containerHeight: 645.h,
            itemBuilder: (BuildContext context, int index) {
              return const SubscriptionWidget();
            },
            //loop: true,
            itemCount: 3,
            index: slideIndex,
            itemWidth: 371.w,
            itemHeight: 645.h,
            layout: SwiperLayout.TINDER,
            onIndexChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  i == slideIndex
                      ? _buildPageIndicator(true)
                      : _buildPageIndicator(false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
