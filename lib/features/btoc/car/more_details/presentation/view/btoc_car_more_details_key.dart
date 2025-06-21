/*Don't Remove or Modify Below Comments*/

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ key identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

part 'btoc_car_more_details_key.g.dart';

// Helper function to create form field keys
GlobalKey<FormFieldState<String>> _createFormFieldKey() {
  return GlobalKey<FormFieldState<String>>();
}

@Riverpod(keepAlive: true)
GlobalKey<FormState> btocCarMoreDetailsFormKey(Ref ref) {
  return GlobalKey<FormState>();
}

final btocCarMoreDetailsTopContainerKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsTopContainerKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsSelectionContainerKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsSelectionContainerKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsMakeDropdownKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsMakeDropdownKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsModelDropdownKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsModelDropdownKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsModelYearDropdownKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsModelYearDropdownKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsModelCylindersKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsModelCylindersKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsBodyTypeKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsBodyTypeKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsSeatingCapacityKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsSeatingCapacityKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsUsageKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsUsageKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsFirstRegistrationYearKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsFirstRegistrationYearKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsVehicleValueKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsVehicleValueKey(Ref ref) {
  return _createFormFieldKey();
}

final btocCarMoreDetailsNextButtonKey_ = Provider<GlobalKey<FormFieldState<String>>>((ref) {
  return GlobalKey<FormFieldState<String>>();
});

@Riverpod(keepAlive: false)
GlobalKey<FormFieldState<String>> btocCarMoreDetailsNextButtonKey(Ref ref) {
  return _createFormFieldKey();
}
