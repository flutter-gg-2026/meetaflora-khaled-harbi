import 'package:plants_recognition/features/home_screen/domain/entities/home_screen_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_screen_model.freezed.dart';
part 'home_screen_model.g.dart';

@freezed
abstract class HomeScreenModel with _$HomeScreenModel {
  const factory HomeScreenModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _HomeScreenModel;

  factory HomeScreenModel.fromJson(Map<String, Object?> json) => _$HomeScreenModelFromJson(json);
}



extension HomeScreenModelMapper on HomeScreenModel {
  HomeScreenEntity toEntity() {
    return HomeScreenEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
