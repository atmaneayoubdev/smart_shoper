import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/Common/title_widget.dart';
import '../../../Common/notification_widget.dart';
import '../../../Common/profile_widget.dart';
import '../../../constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../components/grid_view_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);
  static const String routeName = '/settings';

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
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
                  "الاعداددات",
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
                padding: EdgeInsets.symmetric(horizontal: 28.w),
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
                        height: 56.h,
                      ),
                      StaggeredGrid.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 26.h,
                        crossAxisSpacing: 14.w,
                        children: const [
                          GridViewWidget(
                            name: "صندوق الهدايا",
                            svg: "assets/icons/gift_box.svg",
                            type: 1,
                          ),
                          GridViewWidget(
                            name: "الاشتراكات",
                            svg: "assets/icons/subscriptions.svg",
                            type: 1,
                          ),
                          GridViewWidget(
                            name: "كيفيه عمل التطبيق",
                            svg: "assets/icons/how_it_works.svg",
                            type: 1,
                          ),
                          GridViewWidget(
                            name: "الشروط والاحكام",
                            svg: "assets/icons/terms_and_conditions.svg",
                            type: 1,
                          ),
                          GridViewWidget(
                            name: "سياسه الخصوصيه",
                            svg: "assets/icons/privacy_policies.svg",
                            type: 1,
                          ),
                          GridViewWidget(
                            name: "الاساله الشائعه",
                            svg: "assets/icons/faq.svg",
                            type: 1,
                          ),
                          GridViewWidget(
                            name: "عن التطبيق",
                            svg: "assets/icons/about_app.svg",
                            type: 1,
                          ),
                          GridViewWidget(
                            name: "اللغه",
                            svg: "assets/icons/language.svg",
                            type: 1,
                          ),
                          GridViewWidget(
                            name: "اتصل بنا",
                            svg: "assets/icons/contactus.svg",
                            type: 1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      const TitleWidget(
                          title: "تواصل معنا عبر", noMargin: false),
                      SizedBox(
                        height: 20.h,
                      ),
                      StaggeredGrid.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 26.h,
                        crossAxisSpacing: 8.w,
                        children: const [
                          GridViewWidget(
                            name: "فيس بوك",
                            svg: "assets/icons/facebook.svg",
                            type: 2,
                          ),
                          GridViewWidget(
                            name: "تويتر",
                            svg: "assets/icons/twitter.svg",
                            type: 2,
                          ),
                          GridViewWidget(
                            name: "انستجرام",
                            svg: "assets/icons/instagram.svg",
                            type: 2,
                          ),
                          GridViewWidget(
                            name: "الواتساب",
                            svg: "assets/icons/whatsapp.svg",
                            type: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
