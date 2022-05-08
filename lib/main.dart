import 'package:flutter/material.dart';
import 'package:smart_shoper/constants.dart';
import 'package:smart_shoper/views/Drawer/views/change_email_view.dart';
import 'package:smart_shoper/views/Drawer/views/change_name_view.dart';
import 'package:smart_shoper/views/Drawer/views/change_password_view.dart';
import 'package:smart_shoper/views/Offers/views/offer_details.dart';
import 'package:smart_shoper/views/Settings/views/settings_view.dart';
import 'package:smart_shoper/views/Stores/views/stores_view.dart';
import 'package:smart_shoper/views/lalding_view.dart';
import 'package:smart_shoper/views/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'translations/codegen_loader.g.dart';
import 'views/Authentication/views/auth_view.dart';
import 'views/Authentication/views/location_view.dart';
import 'views/Authentication/views/phone_verification_view.dart';
import 'views/Authentication/views/subscription_view.dart';
import 'views/Authentication/views/user_info.dart';
import 'views/Favorite/views/favorite_view.dart';
import 'views/Home/views/home_view.dart';
import 'views/Offers/views/offers_view.dart';
import 'views/OnBoarding/views/introduction_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'assets/translations/',
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      startLocale: const Locale('ar'),
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('ar'),
      child: const MyApp(),
    ),
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
          backgroundColor: kLightGreyColor,
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
              const PhoneVerificationView()),
          UserInfo.routeName: ((context) => const UserInfo()),
          SubscriptioinView.routeName: ((context) => const SubscriptioinView()),
          LocationView.routeName: ((context) => const LocationView()),
          HomeView.routeName: ((context) => const HomeView()),
          OffersView.routeName: ((context) => const OffersView()),
          OfferDetailsView.routeName: ((context) => const OfferDetailsView()),
          FavoriteView.routeName: ((context) => const FavoriteView()),
          StoresView.routeName: (context) => const StoresView(),
          ChangeNameView.routeName: ((context) => const ChangeNameView()),
          ChangePasswordView.routeName: ((context) =>
              const ChangePasswordView()),
          ChangeEmailView.routeName: ((context) => const ChangeEmailView()),
          SettingsView.routeName: ((context) => const SettingsView()),
        },
      ),
    );
  }
}
