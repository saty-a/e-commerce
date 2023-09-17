import 'package:flutter/material.dart';
import 'dart:isolate';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'firebase_options.dart';

void main() async {
  /// This method call binds the framework to the Flutter engine
  WidgetsFlutterBinding.ensureInitialized();

  ///  Setting Status Bar
  Styles.setStatusBarTheme();

  /// Setting Orientation of Device
  Styles.setDeviceOrientationOfApp();

  /// Ensuring Size of the phone in UI Design
  await ScreenUtil.ensureScreenSize();

  await initFirebase();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Styles.setStatusBarTheme();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WishlistCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit()..addProducts(),
        ),
        BlocProvider(
          create: (context) => CustomerReviewCubit(),
        ),
        BlocProvider(
          create: (context) => AddReviewCubit(),
        ),
        BlocProvider(
          create: (context) => NotificationCubit()..addNotifications(),
        ),
        BlocProvider(
          create: (context) => CartCubit(),
        ),
        BlocProvider(
          create: (context) => MyAddressBookCubit()..addAddress(),
        ),
      ],
      // create: (context) => WishlistCubit(),
      child: MaterialApp(
        builder: (BuildContext context, Widget? child) {
          ScreenUtil.init(context, designSize: const Size(390, 844));
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: child!,
            ),
          );
        },
        title: 'Flutter Demo',
        // builder: (context, child) {
        //   return ScrollConfiguration(
        //     behavior: CustomScrollBehavior(),
        //     child: child!,
        //   );
        // },
        debugShowCheckedModeBanner: false,
        theme: AppThemes.light,
        initialRoute: Routes.splash,
        routes: appRoute(),
      ),
    );
  }
}

Future<void> initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseAnalytics.instance.logEvent(name: 'ecommerce');

  await initCrashlytics();
}

Future<void> initCrashlytics() async {
  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  } else {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    Isolate.current.addErrorListener(RawReceivePort((pair) async {
      final List<dynamic> errorAndStacktrace = pair;
      await FirebaseCrashlytics.instance
          .recordError(errorAndStacktrace.first, errorAndStacktrace.last);
    }).sendPort);
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
