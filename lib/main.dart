import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/habit%20tracker/views/home%20layout/home%20layout%20view.dart';
import 'package:ui/habit%20tracker/views/home%20view/cubits/home_cubit.dart';
import 'package:ui/habit%20tracker/views/splash%20view/splash%20view.dart';

import 'core/bloc_observer.dart';
import 'core/constants.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => HomeCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: kBackground1,
                appBarTheme: const AppBarTheme(
                    backgroundColor: Colors.white,
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Colors.transparent,
                        statusBarIconBrightness: Brightness.dark))),
            home: const SplashView(),
            // home: const HomeLayoutView(),
          ),
        );
      },
    );
  }
}
