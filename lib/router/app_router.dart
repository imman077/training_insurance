import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import 'deferred.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Import identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

import "../features/btoc/car/more_details/presentation/view/btoc_car_more_details_screen.dart" deferred as btoc_car_more_details_screen;

import "../features/btoc/car/ocr_screen/presentation/view/btoc_car_ocr_screen_screen.dart" deferred as btoc_car_ocr_screen_screen;

import "../features/btoc/car/initial_screen/presentation/view/btoc_car_initial_screen_screen.dart" deferred as btoc_car_initial_screen_screen;

void appiNavigate({required BuildContext context, required String path, replace, data}) {
  context.go(path, extra: data);
}

class AppRouter {
  static CustomTransitionPage<dynamic> pageWidget(child) => CustomTransitionPage(
        child: child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      );

  final GoRouter router = GoRouter(
    initialLocation: "/btoc_car_ocr_screen",
    errorBuilder: (context, state) => const Scaffold(body: Center(child: Text("Page Not Found"))),
    routes: [
      /*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Routes identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

      GoRoute(
        path: "/btoc_car_more_details",
        pageBuilder: (context, state) {
          return MaterialPage(
            child: DeferredWidget(
              loadLibrary: btoc_car_more_details_screen.loadLibrary,
              builder: () => btoc_car_more_details_screen.BtocCarMoreDetailsScreen(),
            ),
          );
        },
      ),

      GoRoute(
        path: "/btoc_car_ocr_screen",
        pageBuilder: (context, state) {
          return MaterialPage(
            child: DeferredWidget(
              loadLibrary: btoc_car_ocr_screen_screen.loadLibrary,
              builder: () => btoc_car_ocr_screen_screen.BtocCarOcrScreenScreen(),
            ),
          );
        },
      ),

      GoRoute(
        path: "/btoc_car_initial_screen",
        pageBuilder: (context, state) {
          return MaterialPage(
            child: DeferredWidget(
              loadLibrary: btoc_car_initial_screen_screen.loadLibrary,
              builder: () => btoc_car_initial_screen_screen.BtocCarInitialScreenScreen(),
            ),
          );
        },
      ),

      // GoRoute(
      //   path: "/",
      //   pageBuilder: (context, state) => AppRouter.pageWidget(
      //     DeferredWidget(
      //       loadLibrary: home_screen.loadLibrary,
      //       builder: () => const Center(child: Material(child: Text("Madx Welcome's you"))),
      //     ),
      //   ),
      // ),
    ],
  );
}
