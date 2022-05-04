import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/Authentication/views/auth_view.dart';
import 'package:smart_shoper/constants.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../Common/gradiant_button.dart';
import '../components/slider_model.dart';

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
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: kVerticalGradiant,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: OvalTopBorderClipper(),
                child: Container(
                  height: 400.h,
                  color: Colors.white,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                FittedBox(
                  child: TextButton(
                    onPressed: () {
                      controller!.animateToPage(2,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.linear);
                    },
                    child: Center(
                      child: Text(
                        "  تخطي  ",
                        style: GoogleFonts.tajawal(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.normal,
                          color: kTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Center(
                  child: SizedBox(
                    height: 577.h,
                    width: 371.w,
                    child: Stack(
                      children: [
                        Container(
                          width: 371.w,
                          height: 537.h,
                          padding: EdgeInsets.only(
                            top: 50.h,
                            //left: 30.w,
                            //right: 30.w,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45.h),
                            boxShadow: const [
                              BoxShadow(
                                color: kGreyColor,
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 380.h,
                                child: PageView(
                                  controller: controller,
                                  onPageChanged: (index) {
                                    setState(() {
                                      slideIndex = index;
                                    });
                                  },
                                  children: <Widget>[
                                    SlideTile(
                                      imagePath:
                                          mySLides[0].getImageAssetPath(),
                                      desc: mySLides[0].getDesc(),
                                    ),
                                    SlideTile(
                                      imagePath:
                                          mySLides[1].getImageAssetPath(),
                                      desc: mySLides[1].getDesc(),
                                    ),
                                    SlideTile(
                                      imagePath:
                                          mySLides[2].getImageAssetPath(),
                                      desc: mySLides[2].getDesc(),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < 3; i++)
                                    i == slideIndex
                                        ? _buildPageIndicator(true)
                                        : _buildPageIndicator(false),
                                ],
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            //width: 125.w,
                            height: 80.h, padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: kGreyColor,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 10), // changes position of shadow
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, -10), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: kVerticalGradiant,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  if (slideIndex != 2) {
                                    controller!.animateToPage(
                                      slideIndex + 1,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.linear,
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                slideIndex == 2
                    ? Center(
                        child: GestureDetector(
                            onTap: (() {
                              Navigator.pushReplacementNamed(
                                context,
                                AuthView.routeName,
                              );
                            }),
                            child: SizedBox(
                                width: 320.w,
                                child:
                                    const GradiantButton(text: "ابدا الان"))),
                      )
                    : const SizedBox(),
              ],
            ),
          ],
        ),
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
            height: 200.h,
            width: 280.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                alignment: Alignment.center,
                fit: BoxFit.fill,
              ),
            ),
            child: const SizedBox(),
          ),
          SizedBox(
            height: 60.h,
          ),
          Container(
            height: 100.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: GoogleFonts.tajawal(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                color: kTextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
