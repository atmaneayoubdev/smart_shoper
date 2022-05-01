import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/constants.dart';
import 'package:smart_shoper/lalding_view.dart';

import '../widgets/slider_model.dart';

class IntroductionView extends StatefulWidget {
  const IntroductionView({Key? key}) : super(key: key);
  static const String routeName = '/intro';

  @override
  State<IntroductionView> createState() => _IntroductionViewState();
}

class _IntroductionViewState extends State<IntroductionView> {
  List<SliderModel> mySLides = <SliderModel>[];
  int slideIndex = 0;
  PageController? controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 8.h,
      width: isCurrentPage ? 18.h : 14.h,
      decoration: BoxDecoration(
        color: isCurrentPage ? kBlueGreenColor : kYellowGreenColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySLides = getSlides();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            //height: MediaQuery.of(context).size.height - 100,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  slideIndex = index;
                });
              },
              children: <Widget>[
                SlideTile(
                  imagePath: mySLides[0].getImageAssetPath(),
                  desc: mySLides[0].getDesc(),
                ),
                SlideTile(
                  imagePath: mySLides[1].getImageAssetPath(),
                  desc: mySLides[1].getDesc(),
                ),
                SlideTile(
                  imagePath: mySLides[2].getImageAssetPath(),
                  desc: mySLides[2].getDesc(),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 65.h, horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: TextButton(
                    onPressed: () {
                      controller!.animateToPage(2,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.linear);
                    },
                    child: Center(
                      child: Text(
                        "تخطي",
                        style: GoogleFonts.tajawal(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                slideIndex != 2
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              for (int i = 0; i < 3; i++)
                                i == slideIndex
                                    ? _buildPageIndicator(true)
                                    : _buildPageIndicator(false),
                            ],
                          ),
                          Container(
                            width: 125.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                30.r,
                              ),
                              gradient: kHorizontalrGradiant,
                            ),
                            child: TextButton(
                              onPressed: () {
                                if (kDebugMode) {
                                  print("this is slideIndex: $slideIndex");
                                }
                                controller!.animateToPage(
                                  slideIndex + 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.linear,
                                );
                              },
                              //splashColor: Colors.blue[50],
                              child: FittedBox(
                                child: Text(
                                  "التالي",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    : Container(
                        width: double.infinity,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            30.r,
                          ),
                          gradient: kHorizontalrGradiant,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Landingview.routeName);
                          },
                          //splashColor: Colors.blue[50],
                          child: Text(
                            "واصل",
                            style: GoogleFonts.tajawal(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
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

// ignore: must_be_immutable
class SlideTile extends StatelessWidget {
  String imagePath, desc;

  SlideTile({Key? key, required this.imagePath, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 619.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                alignment: Alignment.center,
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: kHorizontalrGradiant,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: kVerticalGradiant,
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 90.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: GoogleFonts.tajawal(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
