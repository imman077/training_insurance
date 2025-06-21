import "package:appikorn_madix_widgets/box_appi/box_appi.dart";
import "package:appikorn_madix_widgets/button_appi/button_appi.dart";
import "package:appikorn_madix_widgets/drop_down_field_appi/drop_down_field_appi.dart";
import "package:appikorn_madix_widgets/text_appi/text_appi.dart";
import "package:appikorn_madix_widgets/text_field_appi/text_field_appi.dart";
import "package:appikorn_madix_widgets/utils/mode/text_field_params_appi.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:mix/mix.dart";
import "package:training_project/widgets/card_layout.dart";
import "package:training_project/widgets/global.dart";
import "../../../../../../core/constants/breakpoint.dart";
import "../../../../../../core/constants/parameters.dart";
import "../../../../../../core/layout/create_responsive_layout_builder.dart";
import "../../../../../../core/layout/home_layout_mobile.dart";
import "../../../../../../core/layout/home_layout_tab.dart";
import "../../../../../../core/layout/home_layout_web.dart";
import "../controller/btoc_car_more_details_controller.dart";
import "../view/btoc_car_more_details_key.dart";
import "../provider/btoc_car_more_details_provider.dart";
import "../view/btoc_car_more_details_focus.dart";

part "btoc_car_more_details_mobile.dart";
part "btoc_car_more_details_tab.dart";
part "btoc_car_more_details_web.dart";
part "btoc_car_more_details_widgets.dart";

class BtocCarMoreDetailsScreen extends StatelessWidget {
  const BtocCarMoreDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      onInit: BtocCarMoreDetailsController().onInit,
      onDispose: BtocCarMoreDetailsController().onDispose,
      mobileView: HomeLayoutMobile(body: BtocCarMoreDetailsMobile()),
      tabletView: HomeLayoutTab(body: BtocCarMoreDetailsTab()),
      webView: HomeLayoutWeb(body: BtocCarMoreDetailsWeb()),
    );
  }
}
