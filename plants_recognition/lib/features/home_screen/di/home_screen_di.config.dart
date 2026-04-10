// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:plants_recognition/features/home_screen/data/datasources/home_screen_remote_data_source.dart'
    as _i171;
import 'package:plants_recognition/features/home_screen/data/datasources/plants_local_data_source.dart'
    as _i982;
import 'package:plants_recognition/features/home_screen/data/repositories/home_screen_repository_data.dart'
    as _i537;
import 'package:plants_recognition/features/home_screen/domain/repositories/home_screen_repository_domain.dart'
    as _i331;
import 'package:plants_recognition/features/home_screen/domain/use_cases/home_screen_use_case.dart'
    as _i905;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initHomeScreen({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i982.BaseHomeScreenLocalDataSource>(
      () => _i982.HomeScreenLocalDataSource(),
    );
    gh.lazySingleton<_i171.BaseHomeScreenRemoteDataSource>(
      () => _i171.HomeScreenRemoteDataSource(),
    );
    gh.lazySingleton<_i331.HomeScreenRepositoryDomain>(
      () => _i537.HomeScreenRepositoryData(
        gh<_i171.BaseHomeScreenRemoteDataSource>(),
        gh<_i982.BaseHomeScreenLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i905.HomeScreenUseCase>(
      () => _i905.HomeScreenUseCase(gh<_i331.HomeScreenRepositoryDomain>()),
    );
    return this;
  }
}
