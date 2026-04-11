import 'package:multiple_result/multiple_result.dart';
import 'package:plants_recognition/core/errors/failure.dart';
import 'package:plants_recognition/features/home_screen/domain/entities/plant_entity.dart';

abstract class HomeScreenRepositoryDomain {
  Future<Result<List<PlantEntity>, Failure>> getPlants();
  // ====================================================================
  // ====================================================================
}
