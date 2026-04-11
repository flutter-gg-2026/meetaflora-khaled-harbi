import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:plants_recognition/core/errors/failure.dart';
import 'package:plants_recognition/features/plant_information/domain/entities/plant_description_entity.dart';
import 'package:plants_recognition/features/plant_information/domain/repositories/plant_information_repository_domain.dart';

@lazySingleton
class PlantInformationUseCase {
  final PlantInformationRepositoryDomain _repositoryData;

  PlantInformationUseCase(this._repositoryData);

  // ====================================================================
  // ====================================================================

  Future<Result<PlantDescriptionEntity, Failure>> getDescription(
    String imageURL,
    String title,
  ) {
    return _repositoryData.getDescription(imageURL, title);
  }

  // ====================================================================
  // ====================================================================
}
