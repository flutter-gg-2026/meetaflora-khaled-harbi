import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:plants_recognition/core/errors/network_exceptions.dart';
import 'package:plants_recognition/core/errors/failure.dart';
import 'package:plants_recognition/features/plant_information/data/models/plant_description_model.dart';
import 'package:plants_recognition/features/plant_information/domain/entities/plant_description_entity.dart';
import 'package:plants_recognition/features/plant_information/data/datasources/plant_information_remote_data_source.dart';
import 'package:plants_recognition/features/plant_information/domain/repositories/plant_information_repository_domain.dart';

@LazySingleton(as: PlantInformationRepositoryDomain)
class PlantInformationRepositoryData
    implements PlantInformationRepositoryDomain {
  final BasePlantInformationRemoteDataSource remoteDataSource;

  PlantInformationRepositoryData(this.remoteDataSource);

  // ====================================================================
  // ====================================================================

  @override
  Future<Result<PlantDescriptionEntity, Failure>> getDescription(
    String imageURL,
    String title,
  ) async {
    try {
      final response = await remoteDataSource.getDescription(imageURL, title);
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
  // ====================================================================
  // ====================================================================
}
