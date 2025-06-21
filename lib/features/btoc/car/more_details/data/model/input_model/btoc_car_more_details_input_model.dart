import "package:equatable/equatable.dart";
import 'package:freezed_annotation/freezed_annotation.dart';

part "btoc_car_more_details_input_model.freezed.dart";
part "btoc_car_more_details_input_model.g.dart";

@freezed
class BtocCarMoreDetailsInputModel with _$BtocCarMoreDetailsInputModel {
  const BtocCarMoreDetailsInputModel._();
  const factory BtocCarMoreDetailsInputModel({
    String? make_dropdown, // WIDGET@w
    String? model_dropdown, // WIDGET@w
    String? model_year_dropdown, // WIDGET@w
    String? model_cylinders, // WIDGET@w
    String? body_type, // WIDGET@w
    String? seating_capacity, // WIDGET@w
    String? usage, // WIDGET@w
    String? first_registration_year, // WIDGET@w
    String? vehicle_value, // WIDGET@w
  }) = _BtocCarMoreDetailsInputModel;
  factory BtocCarMoreDetailsInputModel.fromJson(Map<String, dynamic> json) => _$BtocCarMoreDetailsInputModelFromJson(json);
}

extension BtocCarMoreDetailsInputModelX on BtocCarMoreDetailsInputModel {
  BtocCarMoreDetailsInputModel merge(BtocCarMoreDetailsInputModel? data) {
    if (data == null) return this;
    return BtocCarMoreDetailsInputModel(
      make_dropdown: data.make_dropdown ?? make_dropdown,
      model_dropdown: data.model_dropdown ?? model_dropdown,
      model_year_dropdown: data.model_year_dropdown ?? model_year_dropdown,
      model_cylinders: data.model_cylinders ?? model_cylinders,
      body_type: data.body_type ?? body_type,
      seating_capacity: data.seating_capacity ?? seating_capacity,
      usage: data.usage ?? usage,
      first_registration_year: data.first_registration_year ?? first_registration_year,
      vehicle_value: data.vehicle_value ?? vehicle_value,
    );
  }
}
