import "package:appikorn_madix_widgets/box_appi/box_appi.dart";
import "package:appikorn_madix_widgets/button_appi/button_appi.dart";
import "package:appikorn_madix_widgets/text_appi/text_appi.dart";
import "package:appikorn_madix_widgets/text_field_appi/text_field_appi.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:mix/mix.dart";
import "package:training_project/router/app_router.dart";
import "package:training_project/widgets/global.dart";
import "../../../../../../core/constants/breakpoint.dart";
import "../../../../../../core/constants/parameters.dart";
import "../../../../../../core/layout/create_responsive_layout_builder.dart";
import "../../../../../../core/layout/home_layout_mobile.dart";
import "../../../../../../core/layout/home_layout_tab.dart";
import "../../../../../../core/layout/home_layout_web.dart";
import "../controller/btoc_car_initial_screen_controller.dart";
import "../view/btoc_car_initial_screen_key.dart";
import "../provider/btoc_car_initial_screen_provider.dart";
import "../view/btoc_car_initial_screen_focus.dart";

part "btoc_car_initial_screen_mobile.dart";
part "btoc_car_initial_screen_tab.dart";
part "btoc_car_initial_screen_web.dart";
part "btoc_car_initial_screen_widgets.dart";

class BtocCarInitialScreenScreen extends StatelessWidget {
  const BtocCarInitialScreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      onInit: BtocCarInitialScreenController().onInit,
      onDispose: BtocCarInitialScreenController().onDispose,
      mobileView: HomeLayoutMobile(body: BtocCarInitialScreenMobile()),
      tabletView: HomeLayoutTab(body: BtocCarInitialScreenTab()),
      webView: HomeLayoutWeb(body: BtocCarInitialScreenWeb()),
    );
  }
}
