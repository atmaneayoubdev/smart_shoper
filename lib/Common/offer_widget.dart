import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shoper/views/Offers/views/offer_details.dart';

import 'coupon_widget.dart';
import 'rating_widget.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key? key,
    required this.isVerticle,
    required this.isCachBack,
    this.cachBack,
  }) : super(key: key);
  final bool isVerticle;
  final bool isCachBack;
  final String? cachBack;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, OfferDetailsView.routeName);
        },
        child: Container(
          height: isCachBack ? 240.h : 210.h,
          width: isVerticle ? 381.w : 312.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 5,
                  spreadRadius: 2,
                  color: kGreyColor,
                ),
              ]),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 10.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          AssetImage("assets/images/offers_image_example.png"),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const RatingWidget(
                            rating: "4.7",
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 5.h),
                            height: 36.h,
                            width: 36.w,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const FittedBox(
                              child: Icon(
                                Icons.favorite_outline,
                                color: Color.fromRGBO(255, 171, 0, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const ReductionWidget(
                        rate: '70',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: isCachBack ? 83.h : 58.h,
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                  horizontal: 10.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 36.h,
                          width: 36.w,
                          child: Center(
                            child: Stack(
                              children: [
                                Center(
                                  child: SvgPicture.asset(
                                      "assets/icons/circle.svg"),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  child: Center(
                                    child:
                                        Image.asset("assets/images/handm.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              "كاش باش وخصومات تصل حتي  %70 ",
                              overflow: TextOverflow.clip,
                              style: GoogleFonts.tajawal(
                                fontSize: 16.sp,
                                color: kTextColor,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (isCachBack)
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 40.w),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/cachback.svg",
                              height: 20.h,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "كاش باك " + cachBack!,
                              overflow: TextOverflow.clip,
                              style: GoogleFonts.tajawal(
                                height: 2,
                                fontSize: 12.sp,
                                color: const Color.fromRGBO(255, 171, 0, 1),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
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
  }
}
