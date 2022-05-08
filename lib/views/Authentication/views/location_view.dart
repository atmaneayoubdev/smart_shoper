import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shoper/Common/gradiant_button.dart';
import 'package:smart_shoper/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import 'package:smart_shoper/views/lalding_view.dart';

class LocationView extends StatefulWidget {
  const LocationView({Key? key}) : super(key: key);
  static const String routeName = '/location';

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  final Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _markers = {};

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.459858, 39.245219),
    zoom: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: kDarkGreyColor,
              boxShadow: [
                BoxShadow(
                  color: kGreyColor,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: 800.h,
            width: double.infinity,
            child: Stack(
              children: [
                GoogleMap(
                  markers: _markers,
                  compassEnabled: false,
                  mapToolbarEnabled: false,
                  zoomControlsEnabled: false,
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
                Center(
                    child: SvgPicture.asset("assets/icons/map_marker_icon.svg"))
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 69.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 59.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: kGreyColor,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30.r),
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
                        width: 20.w,
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
                            hintText: "جده حي الوزيريه قاعه امنيتي ",
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
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 20.h,
                      ),
                      width: 347.w,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: kGreyColor,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(14.r),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "جده حي الوزيريه قاعه امنيتي ",
                            style: GoogleFonts.tajawal(
                              fontSize: 16.sp,
                              color: kTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/location_icon.svg",
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Flexible(
                                child: Text(
                                  "7251 مدائن الفهد , 2483 حي ، 7251 مدائن الفهد ، جده 22347 السعوديه",
                                  overflow: TextOverflow.clip,
                                  maxLines: 10,
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14.sp,
                                    color: kDarkGreyColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, Landingview.routeName);
                        },
                        child: const GradiantButton(text: "تاكيد"),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
