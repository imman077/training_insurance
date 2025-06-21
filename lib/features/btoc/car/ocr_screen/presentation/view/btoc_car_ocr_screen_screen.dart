import "dart:io";

import "package:appikorn_madix_widgets/box_appi/box_appi.dart";
import "package:appikorn_madix_widgets/text_appi/text_appi.dart";
import "package:appikorn_madix_widgets/text_field_appi/text_field_appi.dart";
import "package:dotted_border/dotted_border.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:image_picker/image_picker.dart";
import "package:mix/mix.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";
import "package:training_project/router/app_router.dart";
import "package:training_project/widgets/global.dart";
import "../../../../../../core/constants/breakpoint.dart";
import "../../../../../../core/constants/parameters.dart";
import "../../../../../../core/layout/create_responsive_layout_builder.dart";
import "../../../../../../core/layout/home_layout_mobile.dart";
import "../../../../../../core/layout/home_layout_tab.dart";
import "../../../../../../core/layout/home_layout_web.dart";
import "../../../../../../widgets/card_layout.dart";
import "../controller/btoc_car_ocr_screen_controller.dart";
import "../view/btoc_car_ocr_screen_key.dart";
import "../provider/btoc_car_ocr_screen_provider.dart";
import "../view/btoc_car_ocr_screen_focus.dart";

part "btoc_car_ocr_screen_mobile.dart";
part "btoc_car_ocr_screen_tab.dart";
part "btoc_car_ocr_screen_web.dart";
part "btoc_car_ocr_screen_widgets.dart";

class BtocCarOcrScreenScreen extends StatelessWidget {
  const BtocCarOcrScreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      onInit: BtocCarOcrScreenController().onInit,
      onDispose: BtocCarOcrScreenController().onDispose,
      mobileView: HomeLayoutMobile(body: BtocCarOcrScreenMobile()),
      tabletView: HomeLayoutTab(body: BtocCarOcrScreenTab()),
      webView: HomeLayoutWeb(body: BtocCarOcrScreenWeb()),
    );
  }
}
