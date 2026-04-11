import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:plants_recognition/core/errors/failure.dart';
import 'package:plants_recognition/features/home_screen/domain/entities/plant_entity.dart';
import 'package:plants_recognition/features/home_screen/domain/repositories/home_screen_repository_domain.dart';

@lazySingleton
class HomeScreenUseCase {
  final HomeScreenRepositoryDomain _repositoryData;

  HomeScreenUseCase(this._repositoryData);

  // ====================================================================
  // ====================================================================

  Future<Result<List<PlantEntity>, Failure>> getPlants() async {
    return _repositoryData.getPlants();
  }

  // ====================================================================
  // ====================================================================
}
