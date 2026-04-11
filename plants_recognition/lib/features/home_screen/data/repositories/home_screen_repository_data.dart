import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:plants_recognition/core/errors/network_exceptions.dart';
import 'package:plants_recognition/core/errors/failure.dart';
import 'package:plants_recognition/features/home_screen/data/datasources/plants_local_data_source.dart';
import 'package:plants_recognition/features/home_screen/data/models/plant_model.dart';
import 'package:plants_recognition/features/home_screen/domain/entities/plant_entity.dart';
import 'package:plants_recognition/features/home_screen/domain/repositories/home_screen_repository_domain.dart';

@LazySingleton(as: HomeScreenRepositoryDomain)
class HomeScreenRepositoryData implements HomeScreenRepositoryDomain {
  final BaseHomeScreenLocalDataSource localDataSource;

  HomeScreenRepositoryData(this.localDataSource);

  @override
  Future<Result<List<PlantEntity>, Failure>> getPlants() async {
    try {
      final response = await localDataSource.getPlants();

      // List<PlantModel> > List<PlantEntity>
      final plantsEntity = response.map((plant) => plant.toEntity()).toList();

      return Success(plantsEntity);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
