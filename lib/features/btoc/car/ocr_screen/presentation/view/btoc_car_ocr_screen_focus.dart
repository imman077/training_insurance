/*Don't Remove or Modify Below Comments*/

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ focus identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

part 'btoc_car_ocr_screen_focus.g.dart';

// Helper function to create focus nodes with proper disposal
FocusNode _createFocusNode(Ref ref, String name) {
  final focusNode = FocusNode();
  ref.onDispose(() {
    focusNode.dispose();
  });
  return focusNode;
}

@Riverpod(keepAlive: false)
FocusNode btocCarOcrScreenQuotesFieldFocusNode(Ref ref) {
  return _createFocusNode(ref, "quotes_field");
}

@Riverpod(keepAlive: false)
FocusNode btocCarOcrScreenUploadFieldFocusNode(Ref ref) {
  return _createFocusNode(ref, "upload_field");
}

@Riverpod(keepAlive: false)
FocusNode btocCarOcrScreenChassisNoFocusNode(Ref ref) {
  return _createFocusNode(ref, "chassis_no");
}

@Riverpod(keepAlive: false)
FocusNode btocCarOcrScreenProceedButtonFocusNode(Ref ref) {
  return _createFocusNode(ref, "proceed_button");
}
