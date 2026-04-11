import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plants_recognition/features/plant_information/domain/entities/plant_description_entity.dart';
part 'plant_description_model.freezed.dart';
part 'plant_description_model.g.dart';

@freezed
abstract class PlantDescriptionModel with _$PlantDescriptionModel {
  const factory PlantDescriptionModel({required String description}) =
      _PlantDescriptionModel;

  factory PlantDescriptionModel.fromJson(Map<String, Object?> json) =>
      _$PlantDescriptionModelFromJson(json);
}

// ====================================================================
// ====================================================================

extension PlantDescriptionModelMapper on PlantDescriptionModel {
  PlantDescriptionEntity toEntity() {
    return PlantDescriptionEntity(description: description);
  }
}
