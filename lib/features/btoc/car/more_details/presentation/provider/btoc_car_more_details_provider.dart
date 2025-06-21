import 'package:appikorn_madix_widgets/hydrated_appi/hydrated_appi.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/model/input_model/btoc_car_more_details_input_model.dart';
import '../../../../../../core/utility/hydrated_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ import identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

part 'btoc_car_more_details_provider.g.dart';

// Using Riverpod 2.0 annotations with hydration capabilities
@Riverpod(keepAlive: true)
class BtocCarMoreDetailsNotifier extends _$BtocCarMoreDetailsNotifier with HydratedApp<BtocCarMoreDetailsInputModel> {
  @override
  BtocCarMoreDetailsInputModel Function(Map<String, dynamic> json) get fromJson => BtocCarMoreDetailsInputModel.fromJson;

  @override
  BtocCarMoreDetailsInputModel build() {
    // Load state on first build
    loadState();

    return const BtocCarMoreDetailsInputModel();
  }

  void update(BtocCarMoreDetailsInputModel data) {
    final newState = state.merge(data);
    state = newState;
    saveState();
  }

  // Reset state to default values
  void resetState() {
    clearState(const BtocCarMoreDetailsInputModel());
  }
}

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ provider logics identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
