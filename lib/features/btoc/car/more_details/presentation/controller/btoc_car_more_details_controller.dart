import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view/btoc_car_more_details_key.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ import identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ controller logics identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

class BtocCarMoreDetailsController {
  void validate({required WidgetRef ref}) {
    final value = ref.watch(btocCarMoreDetailsFormKeyProvider);
    value.currentState?.save();
    var validationResult = value.currentState?.validate();

    if (validationResult ?? false) {
      validated();
    }
  }

  void validated() {}

  void onInit(WidgetRef ref) {}

  void onDispose(WidgetRef ref) {}
}
