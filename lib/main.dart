import 'package:flutter/material.dart';
import 'package:smart_shoper/Authentication/views/auth_view.dart';
import 'package:smart_shoper/Authentication/views/phone_verification_view.dart';
import 'package:smart_shoper/OnBoarding/views/introduction_view.dart';
import 'package:smart_shoper/constants.dart';
import 'package:smart_shoper/lalding_view.dart';
import 'package:smart_shoper/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import 'translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) =>
    EasyLocalization(
      path: 'assets/translations/',
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      startLocale: const Locale('ar'),
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('ar'),
      // child: DevicePreview(
      //   enabled: true,
      //   builder: (context) => const MyApp(), // Wrap your app
      // ),
      child: const MyApp(),
    ), // Wrap your app
    //),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (BuildContext context) => MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'Smart shoper',
        theme: ThemeData(
          splashColor: kgreenColor,
          hintColor: kGreyColor,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
            accentColor: kgreenColor,
          ).copyWith(
            secondary: Colors.white,
            primary: kBlueColor,
          ),
        ),
        home: const SplashScreen(),
        routes: {
          Landingview.routeName: ((context) => const Landingview()),
          IntroductionView.routeName: ((context) => const IntroductionView()),
          AuthView.routeName: ((context) => const AuthView()),
          PhoneVerificationView.routeName: ((context) =>
              const PhoneVerificationView())
        },
      ),
    );
  }
}
