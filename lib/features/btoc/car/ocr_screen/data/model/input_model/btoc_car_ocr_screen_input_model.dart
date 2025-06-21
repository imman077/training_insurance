import "package:equatable/equatable.dart";
import 'package:freezed_annotation/freezed_annotation.dart';

part "btoc_car_ocr_screen_input_model.freezed.dart";
part "btoc_car_ocr_screen_input_model.g.dart";

@freezed
class BtocCarOcrScreenInputModel with _$BtocCarOcrScreenInputModel {
  const BtocCarOcrScreenInputModel._();
  const factory BtocCarOcrScreenInputModel({
    String? upload_field, // WIDGET@w
    String? chassis_no, // WIDGET@w
  }) = _BtocCarOcrScreenInputModel;
  factory BtocCarOcrScreenInputModel.fromJson(Map<String, dynamic> json) => _$BtocCarOcrScreenInputModelFromJson(json);
}

extension BtocCarOcrScreenInputModelX on BtocCarOcrScreenInputModel {
  BtocCarOcrScreenInputModel merge(BtocCarOcrScreenInputModel? data) {
    if (data == null) return this;
    return BtocCarOcrScreenInputModel(
      upload_field: data.upload_field ?? upload_field,
      chassis_no: data.chassis_no ?? chassis_no,
    );
  }
}
