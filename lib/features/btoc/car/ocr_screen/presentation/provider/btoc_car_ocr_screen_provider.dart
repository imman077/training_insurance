import 'package:appikorn_madix_widgets/hydrated_appi/hydrated_appi.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/model/input_model/btoc_car_ocr_screen_input_model.dart';
import '../../../../../../core/utility/hydrated_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ import identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

part 'btoc_car_ocr_screen_provider.g.dart';

// Using Riverpod 2.0 annotations with hydration capabilities
@Riverpod(keepAlive: true)
class BtocCarOcrScreenNotifier extends _$BtocCarOcrScreenNotifier with HydratedApp<BtocCarOcrScreenInputModel> {
  @override
  BtocCarOcrScreenInputModel Function(Map<String, dynamic> json) get fromJson => BtocCarOcrScreenInputModel.fromJson;

  @override
  BtocCarOcrScreenInputModel build() {
    // Load state on first build
    loadState();

    return const BtocCarOcrScreenInputModel();
  }

  void update(BtocCarOcrScreenInputModel data) {
    final newState = state.merge(data);
    state = newState;
    saveState();
  }

  // Reset state to default values
  void resetState() {
    clearState(const BtocCarOcrScreenInputModel());
  }
}

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ provider logics identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
