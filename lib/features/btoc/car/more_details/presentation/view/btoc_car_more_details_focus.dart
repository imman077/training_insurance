/*Don't Remove or Modify Below Comments*/

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ focus identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

part 'btoc_car_more_details_focus.g.dart';

// Helper function to create focus nodes with proper disposal
FocusNode _createFocusNode(Ref ref, String name) {
  final focusNode = FocusNode();
  ref.onDispose(() {
    focusNode.dispose();
  });
  return focusNode;
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsTopContainerFocusNode(Ref ref) {
  return _createFocusNode(ref, "top_container");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsSelectionContainerFocusNode(Ref ref) {
  return _createFocusNode(ref, "selection_container");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsMakeDropdownFocusNode(Ref ref) {
  return _createFocusNode(ref, "make_dropdown");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsModelDropdownFocusNode(Ref ref) {
  return _createFocusNode(ref, "model_dropdown");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsModelYearDropdownFocusNode(Ref ref) {
  return _createFocusNode(ref, "model_year_dropdown");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsModelCylindersFocusNode(Ref ref) {
  return _createFocusNode(ref, "model_cylinders");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsBodyTypeFocusNode(Ref ref) {
  return _createFocusNode(ref, "body_type");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsSeatingCapacityFocusNode(Ref ref) {
  return _createFocusNode(ref, "seating_capacity");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsUsageFocusNode(Ref ref) {
  return _createFocusNode(ref, "usage");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsFirstRegistrationYearFocusNode(Ref ref) {
  return _createFocusNode(ref, "first_registration_year");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsVehicleValueFocusNode(Ref ref) {
  return _createFocusNode(ref, "vehicle_value");
}

@Riverpod(keepAlive: false)
FocusNode btocCarMoreDetailsNextButtonFocusNode(Ref ref) {
  return _createFocusNode(ref, "next_button");
}
