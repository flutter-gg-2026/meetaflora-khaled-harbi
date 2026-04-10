import 'package:injectable/injectable.dart';
import 'package:plants_recognition/features/home_screen/data/models/home_screen_model.dart';
import 'package:plants_recognition/core/errors/network_exceptions.dart';

abstract class BaseHomeScreenRemoteDataSource {
  Future<HomeScreenModel> getHomeScreen();
}

@LazySingleton(as: BaseHomeScreenRemoteDataSource)
class HomeScreenRemoteDataSource implements BaseHomeScreenRemoteDataSource {
  HomeScreenRemoteDataSource();

  @override
  Future<HomeScreenModel> getHomeScreen() async {
    try {
      return HomeScreenModel(
        id: 1,
        firstName: "Last Name",
        lastName: "First Name",
      );
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
