import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_recognition/features/home_screen/domain/use_cases/home_screen_use_case.dart';
import 'package:plants_recognition/features/home_screen/presentation/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final HomeScreenUseCase _homeScreenUseCase;

  HomeScreenCubit(this._homeScreenUseCase) : super(HomeScreenInitialState());

  Future<void> getHomeScreenMethod() async {
    final result = await _homeScreenUseCase.getHomeScreen();
    result.when(
      (success) {
        // here is when success result
      },
      (whenError) {
        // here is when error result
      },
    );
  }

  Future<void> getPlants() async {
    final result = await _homeScreenUseCase.getPlants();
    result.when(
      (success) {
        // here is when success result
        emit(HomeScreenLoadPlants(plants: success));
      },
      (whenError) {
        // here is when error result
        emit(HomeScreenErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    // here is when close cubit
    return super.close();
  }
}
