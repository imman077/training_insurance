/*Don't Remove or Modify Below Comments*/

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ focus identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

part 'btoc_car_initial_screen_focus.g.dart';

// Helper function to create focus nodes with proper disposal
FocusNode _createFocusNode(Ref ref, String name) {
  final focusNode = FocusNode();
  ref.onDispose(() {
    focusNode.dispose();
  });
  return focusNode;
}

@Riverpod(keepAlive: false)
FocusNode btocCarInitialScreenMobileNoFocusNode(Ref ref) {
  return _createFocusNode(ref, "mobile_no");
}

@Riverpod(keepAlive: false)
FocusNode btocCarInitialScreenEmailIdFocusNode(Ref ref) {
  return _createFocusNode(ref, "email_id");
}

@Riverpod(keepAlive: false)
FocusNode btocCarInitialScreenButtonFocusNode(Ref ref) {
  return _createFocusNode(ref, "button");
}

@Riverpod(keepAlive: false)
FocusNode btocCarInitialScreenCarImgFocusNode(Ref ref) {
  return _createFocusNode(ref, "car_img");
}

@Riverpod(keepAlive: false)
FocusNode btocCarInitialScreenBigContainerFocusNode(Ref ref) {
  return _createFocusNode(ref, "big_container");
}

@Riverpod(keepAlive: false)
FocusNode btocCarInitialScreenSmallCardFocusNode(Ref ref) {
  return _createFocusNode(ref, "small_card");
}
