import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plants_recognition/features/home_screen/domain/entities/plant_entity.dart';
part 'plant_model.freezed.dart';
part 'plant_model.g.dart';

@freezed
abstract class PlantModel with _$PlantModel {
  const factory PlantModel({
    required String id,
    required String title,
    @JsonKey(name: 'image_url') required String imageURL,
  }) = _PlantModel;

  factory PlantModel.fromJson(Map<String, Object?> json) =>
      _$PlantModelFromJson(json);
}

extension PlantModelMapper on PlantModel {
  PlantEntity toEntity() {
    return PlantEntity(id: id, title: title, imageURL: imageURL);
  }
}
