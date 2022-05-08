import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shoper/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/views/Offers/components/locals_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/add_review.dart';
import '../components/code_widegt.dart';
import '../components/info_widget.dart';
import '../components/location_list_item.dart';
import '../components/review_widget.dart';

class OfferDetailsView extends StatefulWidget {
  const OfferDetailsView({Key? key}) : super(key: key);
  static const String routeName = "/offer_details";

  @override
  State<OfferDetailsView> createState() => _OfferDetailsViewState();
}

class _OfferDetailsViewState extends State<OfferDetailsView> {
  bool isReviews = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 415.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/offers_image_example.png"),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.symmetric(vertical: 44.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      height: 36.h,
                      width: 36.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/arrow.svg",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
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
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 328.h,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                  ),
                ),
              )),
            ],
          ),
          SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 296.h,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const InfoWidget(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CodeWidget(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isReviews = false;
                                });
                              },
                              child: Text(
                                "الفروع",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color:
                                      isReviews ? kDarkGreyColor : kTextColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isReviews = true;
                                });
                              },
                              child: Text(
                                "التقييمات",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color:
                                      !isReviews ? kDarkGreyColor : kTextColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        SizedBox(
                          width: 383.h,
                          child: Stack(
                            children: [
                              Container(
                                height: 2,
                                color: kGreyColor,
                              ),
                              Align(
                                alignment: isReviews
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                child: Container(
                                  height: 2,
                                  color: kBlueColor,
                                  width: 150.w,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        if (!isReviews)
                          Column(
                            children: [
                              const LocalsWidget(),
                              SizedBox(
                                height: 15.h,
                              ),
                              ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 3,
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(
                                    height: 10.h,
                                  );
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return const Center(
                                    child: LocationList(),
                                  );
                                },
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                            ],
                          ),
                        if (isReviews)
                          Column(
                            children: [
                              const AddReviewWidget(),
                              SizedBox(
                                height: 15.w,
                              ),
                              ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 3,
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(
                                    height: 10.h,
                                  );
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return const Center(
                                    child: ReviewWidget(),
                                  );
                                },
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
