import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_shoper/views/lalding_view.dart';
import '../../../Common/notification_widget.dart';
import '../../../Common/offer_widget.dart';
import '../../../Common/profile_widget.dart';
import '../../../Common/title_widget.dart';
import '../../../constants.dart';

import '../../Home/components/types_widget.dart';

class StoresView extends StatefulWidget {
  const StoresView({Key? key}) : super(key: key);
  static const String routeName = '/stores';

  @override
  State<StoresView> createState() => _StoresViewState();
}

class _StoresViewState extends State<StoresView> {
  int slideIndex = 0;
  List<String> typeList = [
    "المواد الغذائية",
    "العناية بالصحة",
    "مستشفيات",
    "مطاعم",
    "مقاهي",
    "ازياء",
    "الكترونيات",
    "المنزل",
  ];

  List<String> brandList = [
    "assets/images/handm.png",
    "assets/images/apple.png",
    "assets/images/mcdonalds.png",
    "assets/images/adidas.png",
    "assets/images/nike.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            height: 36.h,
            width: 367.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProfileWidget(),
                Text(
                  "المتاجر",
                  style: GoogleFonts.tajawal(
                    fontSize: 23.sp,
                    color: kTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const NotificationWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(43.r),
                  topRight: Radius.circular(43.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      height: 59.h,
                      width: 388.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(color: kGreyColor),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Center(
                            child: SvgPicture.asset(
                              "assets/icons/loop_icon.svg",
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
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
                                hintText: "وش تفكر لا تحتار …",
                                hintStyle: GoogleFonts.tajawal(
                                  fontSize: 18.sp,
                                  color: kDarkGreyColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    const TitleWidget(title: "كل الفئات"),
                    SizedBox(
                      height: 15.h,
                    ),
                    TypesWidget(
                      typeList: typeList,
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    SizedBox(
                      //height: 220.h,
                      width: double.infinity,
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 14.w,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return const OfferWidget(
                            isVerticle: true,
                            isCachBack: true,
                            cachBack: '5.6',
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    const TitleWidget(title: "متاجر قد تعرفها"),
                    SizedBox(
                      height: 28.h,
                    ),
                    SizedBox(
                      height: 81.h,
                      width: double.infinity,
                      child: ListView.separated(
                        padding: EdgeInsets.only(right: 33.w),
                        scrollDirection: Axis.horizontal,
                        itemCount: brandList.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 16.w,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                ),
                                height: 81.h,
                                width: 81.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kLightGreyColor,
                                ),
                                child: Center(
                                  child: Image.asset(brandList[index]),
                                ),
                              ),
                              //Image.asset("assets/icons/h&m.png"),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    SizedBox(
                      //height: 220.h,
                      width: double.infinity,
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 14.w,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return const OfferWidget(
                            isVerticle: true,
                            isCachBack: true,
                            cachBack: "4.5",
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
