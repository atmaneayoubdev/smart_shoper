import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_shoper/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart'; // Import stop_watch_timer

class PhoneVerificationView extends StatefulWidget {
  const PhoneVerificationView({Key? key}) : super(key: key);
  static const String routeName = '/phone_verification';

  @override
  State<PhoneVerificationView> createState() => _PhoneVerificationViewState();
}

class _PhoneVerificationViewState extends State<PhoneVerificationView> {
  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countDown,
    presetMillisecond: StopWatchTimer.getMilliSecFromSecond(59),
    onChange: (value) => print('onChange $value'),
    onChangeRawSecond: (value) => print('onChangeRawSecond $value'),
    onChangeRawMinute: (value) => print('onChangeRawMinute $value'),
    onStop: () {
      print('onStop');
    },
    onEnded: () {
      print('onEnded');
    },
  );

  @override
  void initState() {
    super.initState();
    _stopWatchTimer.rawTime.listen((value) =>
        print('rawTime $value ${StopWatchTimer.getDisplayTime(value)}'));
    _stopWatchTimer.minuteTime.listen((value) => print('minuteTime $value'));
    _stopWatchTimer.secondTime.listen((value) => print('secondTime $value'));
    _stopWatchTimer.records.listen((value) => print('records $value'));
    _stopWatchTimer.fetchStop.listen((value) => print('stop from stream'));
    _stopWatchTimer.fetchEnded.listen((value) => print('ended from stream'));
    _stopWatchTimer.onExecute.add(StopWatchExecute.start);

    /// Can be set preset time. This case is "00:01.23".
    // _stopWatchTimer.setPresetTime(mSec: 1234);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 129.h),
              Center(
                child: SvgPicture.asset("assets/images/verify_phone_image.svg"),
              ),
              SizedBox(height: 56.h),
              SizedBox(
                width: 275.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text("كود التحقق",
                          style: GoogleFonts.tajawal(
                              fontSize: 26.sp, color: kTextColor)),
                    ),
                    SizedBox(height: 16.h),
                    Center(
                      child: Text(
                        "تم ارسال كود التفعيل عبر رساله نصيه هلي رقم هاتفك 96654432234",
                        style: GoogleFonts.tajawal(
                          fontSize: 18.sp,
                          color: Colors.grey.shade400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 59.h,
              ),
              SizedBox(
                width: 230.w,
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.underline,
                      //borderRadius: BorderRadius.circular(5),

                      selectedColor: kTextColor,
                      activeColor: kTextColor,
                      disabledColor: kGreyColor,
                      inactiveColor: kGreyColor,
                      fieldHeight: 50.h,
                      fieldWidth: 40.w,
                      activeFillColor: kTextColor,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: false,

                    //errorAnimationController: errorController,
                    //controller: textEditingController,
                    // onCompleted: (v) {
                    //   print("Completed");
                    // },
                    onChanged: (value) {
                      setState(() {
                        //currentText = value;
                      });
                    },

                    appContext: context,
                  ),
                ),
              ),
              SizedBox(height: 37.h),
              StreamBuilder<int>(
                stream: _stopWatchTimer.secondTime,
                initialData: _stopWatchTimer.secondTime.value,
                builder: (context, snap) {
                  final value = snap.data;
                  print('Listen every second. $value');
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "إعادة ارسال الكود",
                        style: GoogleFonts.cairo(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: kTextColor,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        value.toString(),
                        style: GoogleFonts.cairo(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: const Color.fromARGB(255, 50, 200, 217),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
