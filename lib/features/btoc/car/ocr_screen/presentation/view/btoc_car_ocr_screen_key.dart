/*Don't Remove or Modify Below Comments*/

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ key identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

part 'btoc_car_ocr_screen_key.g.dart';

// Helper function to create form field keys
GlobalKey<FormFieldState<String>> _createFormFieldKey() {
  return GlobalKey<FormFieldState<String>>();
}

@Riverpod(keepAlive: true)
GlobalKey<FormState> btocCarOcrScreenFormKey(Ref ref) {
  return GlobalKey<FormState>();
}

final btocCarOcrScreenQuotesFieldKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarOcrScreenQuotesFieldKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarOcrScreenUploadFieldKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarOcrScreenUploadFieldKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarOcrScreenChassisNoKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarOcrScreenChassisNoKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarOcrScreenProceedButtonKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarOcrScreenProceedButtonKey(Ref ref) {
  return _createFormFieldKey();
}
