import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:card_swiper/card_swiper.dart';

import '../../../Common/notification_widget.dart';
import '../../../Common/offer_widget.dart';
import '../../../Common/profile_widget.dart';
import '../../../Common/title_widget.dart';

import '../components/types_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const String routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                  "الرئيسيه",
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
                      width: 346.w,
                      height: 25.h,
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/icons/home_location.svg"),
                          SizedBox(
                            width: 27.h,
                          ),
                          Text(
                            "موقعك الحالي",
                            style: GoogleFonts.tajawal(
                              fontSize: 16.sp,
                              color: kDarkGreyColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            width: 14.h,
                          ),
                          Flexible(
                            child: Text(
                              "7251 مدائن الفهد , 2483 حي ، 7251 مدائن الفهد ، جده 22347 السعوديه",
                              style: GoogleFonts.tajawal(
                                fontSize: 16.sp,
                                color: kTextColor,
                                fontWeight: FontWeight.normal,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/icons/chevron_down_button.svg",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Container(
                      width: 387.w,
                      height: 170.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.r),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(13.r),
                            child: Swiper(
                              containerHeight: 162.h,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                          "assets/images/home_caroussel.png",
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Color.fromRGBO(0, 0, 0, 0.3),
                                            Color.fromRGBO(245, 245, 245, 0),
                                          ],
                                        ),
                                      ),
                                    ));
                              },
                              loop: true,
                              duration: 1000,
                              itemCount: 3,
                              index: slideIndex,
                              autoplay: true,
                              layout: SwiperLayout.DEFAULT,
                              onIndexChanged: (index) {
                                setState(() {
                                  slideIndex = index;
                                });
                              },
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10.h),
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
                          ),
                        ],
                      ),
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
                    const TitleWidget(title: "عروض لاتفوتها"),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 220.h,
                      width: double.infinity,
                      child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(right: 33.w),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 14.w,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return const OfferWidget(
                            isVerticle: false,
                            isCachBack: false,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const TitleWidget(title: "الاكثر اختيارا"),
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
                      height: 20.h,
                    ),
                    const TitleWidget(title: "متاجر موصي بها"),
                    SizedBox(
                      height: 23.h,
                    ),
                    SizedBox(
                      height: 220.h,
                      width: double.infinity,
                      child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(right: 33.w),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 14.w,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return const OfferWidget(
                            isVerticle: false,
                            isCachBack: false,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const TitleWidget(title: "افضل العروض"),
                    SizedBox(
                      height: 23.h,
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
                            isCachBack: false,
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
