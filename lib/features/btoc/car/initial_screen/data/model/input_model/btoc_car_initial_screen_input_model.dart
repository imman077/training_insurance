import "package:equatable/equatable.dart";
import 'package:freezed_annotation/freezed_annotation.dart';

part "btoc_car_initial_screen_input_model.freezed.dart";
part "btoc_car_initial_screen_input_model.g.dart";

@freezed
class BtocCarInitialScreenInputModel with _$BtocCarInitialScreenInputModel {
  const BtocCarInitialScreenInputModel._();
  const factory BtocCarInitialScreenInputModel({
    String? mobile_no, // WIDGET@w
    String? email_id, // WIDGET@w
  }) = _BtocCarInitialScreenInputModel;
  factory BtocCarInitialScreenInputModel.fromJson(Map<String, dynamic> json) => _$BtocCarInitialScreenInputModelFromJson(json);
}

extension BtocCarInitialScreenInputModelX on BtocCarInitialScreenInputModel {
  BtocCarInitialScreenInputModel merge(BtocCarInitialScreenInputModel? data) {
    if (data == null) return this;
    return BtocCarInitialScreenInputModel(
      mobile_no: data.mobile_no ?? mobile_no,
      email_id: data.email_id ?? email_id,
    );
  }
}
