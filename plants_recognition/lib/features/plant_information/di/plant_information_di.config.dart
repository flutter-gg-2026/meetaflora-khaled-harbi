// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:plants_recognition/features/plant_information/data/datasources/plant_information_remote_data_source.dart'
    as _i70;
import 'package:plants_recognition/features/plant_information/data/repositories/plant_information_repository_data.dart'
    as _i465;
import 'package:plants_recognition/features/plant_information/domain/repositories/plant_information_repository_domain.dart'
    as _i886;
import 'package:plants_recognition/features/plant_information/domain/use_cases/plant_information_use_case.dart'
    as _i783;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initPlantInformation({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i70.BasePlantInformationRemoteDataSource>(
      () => _i70.PlantInformationRemoteDataSource(dio: gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i886.PlantInformationRepositoryDomain>(
      () => _i465.PlantInformationRepositoryData(
        gh<_i70.BasePlantInformationRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i783.PlantInformationUseCase>(
      () => _i783.PlantInformationUseCase(
        gh<_i886.PlantInformationRepositoryDomain>(),
      ),
    );
    return this;
  }
}
