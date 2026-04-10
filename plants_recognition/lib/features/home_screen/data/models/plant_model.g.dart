// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlantModel _$PlantModelFromJson(Map<String, dynamic> json) => _PlantModel(
  id: json['id'] as String,
  title: json['title'] as String,
  imageURL: json['image_url'] as String,
);

Map<String, dynamic> _$PlantModelToJson(_PlantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image_url': instance.imageURL,
    };
