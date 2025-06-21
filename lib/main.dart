import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:training_project/widgets/global.dart";
import "router/app_router.dart";
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_settings.dart';

Future<void> main() async {
  runApp(
    ProviderScope(
      observers: [
        TalkerRiverpodObserver(
          settings: const TalkerRiverpodLoggerSettings(
            enabled: false,
            printStateFullData: true,
            printProviderAdded: true,
            printProviderUpdated: true,
            printProviderDisposed: true,
            printProviderFailed: true,
            // If you want log only AuthProvider events
          ),
        ),
      ],
      child: HomeApp(appRouter: AppRouter()),
    ),
  );
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().router,
      debugShowCheckedModeBanner: false,
      title: "",
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
        ),
        navigationBarTheme: const NavigationBarThemeData(
            backgroundColor: Color(0xFFB2BB1C),
            indicatorColor: Color(0xffF8FCC6)),
        navigationRailTheme: const NavigationRailThemeData(
            backgroundColor: Color(0xFFB2BB1C),
            indicatorColor: Color(0xffF8FCC6),
            unselectedLabelTextStyle: TextStyle()),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5), // Adjust border radius
                borderSide: BorderSide(color: Colors.grey, width: 1.5)),
            labelStyle: TextStyle(fontSize: media(context, 600) ? 12 : 14),
            hoverColor: Colors.white,
            filled: false,

            // Define the focused border when text field is focused
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.green, width: 1.5)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5), // Adjust border radius
                borderSide: BorderSide(color: Colors.grey, width: 1.5)),
            // error Border
            errorBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.red))),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        //     shape:
        //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //     backgroundColor: const Color(0xFF989B01),
        //     textStyle: const TextStyle(fontSize: 20, color: Colors.white),
        //   ),
        // ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFFB2BB1C),
            secondary: const Color(0xff8D9426)),
        useMaterial3: true,
      ),
    );
  }
}
