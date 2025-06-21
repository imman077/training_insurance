import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final physicsProvider_ = StateProvider.autoDispose<ScrollPhysics>((ref) {
  return const BouncingScrollPhysics();
});
