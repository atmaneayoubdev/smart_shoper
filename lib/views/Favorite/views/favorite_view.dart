import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Common/notification_widget.dart';
import '../../../Common/offer_widget.dart';
import '../../../Common/profile_widget.dart';
import '../../../Common/title_widget.dart';
import '../../../constants.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);
  static const String routeName = '/favorite';

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
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
                  "المفضله",
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
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  const TitleWidget(title: "افضل العروض"),
                  SizedBox(
                    height: 23.h,
                  ),
                  Expanded(
                    //height: 220.h,
                    //width: double.infinity,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
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
        ],
      ),
    );
  }
}
