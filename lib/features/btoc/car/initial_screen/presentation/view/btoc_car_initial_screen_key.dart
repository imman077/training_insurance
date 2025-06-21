/*Don't Remove or Modify Below Comments*/

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ key identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

part 'btoc_car_initial_screen_key.g.dart';

// Helper function to create form field keys
GlobalKey<FormFieldState<String>> _createFormFieldKey() {
  return GlobalKey<FormFieldState<String>>();
}

@Riverpod(keepAlive: true)
GlobalKey<FormState> btocCarInitialScreenFormKey(Ref ref) {
  return GlobalKey<FormState>();
}

final btocCarInitialScreenMobileNoKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarInitialScreenMobileNoKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarInitialScreenEmailIdKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarInitialScreenEmailIdKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarInitialScreenButtonKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarInitialScreenButtonKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarInitialScreenCarImgKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarInitialScreenCarImgKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarInitialScreenBigContainerKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarInitialScreenBigContainerKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarInitialScreenSmallCardKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarInitialScreenSmallCardKey(Ref ref) {
  return _createFormFieldKey();
}
