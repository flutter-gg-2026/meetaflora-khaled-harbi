import 'package:multiple_result/multiple_result.dart';
import 'package:plants_recognition/core/errors/failure.dart';
import 'package:plants_recognition/features/plant_information/domain/entities/plant_description_entity.dart';

abstract class PlantInformationRepositoryDomain {
  Future<Result<PlantDescriptionEntity, Failure>> getDescription(
    String imageURL,
    String title,
  );
  // ====================================================================
}
