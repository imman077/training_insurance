import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view/btoc_car_ocr_screen_key.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ import identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ controller logics identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

class BtocCarOcrScreenController {
  void validate({required WidgetRef ref}) {
    final value = ref.watch(btocCarOcrScreenFormKeyProvider);
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
