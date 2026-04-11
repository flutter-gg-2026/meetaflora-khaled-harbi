import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_recognition/features/home_screen/domain/use_cases/home_screen_use_case.dart';
import 'package:plants_recognition/features/home_screen/presentation/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final HomeScreenUseCase _homeScreenUseCase;

  HomeScreenCubit(this._homeScreenUseCase) : super(HomeScreenInitialState());

  // ====================================================================
  // ====================================================================

  Future<void> getPlants() async {
    final result = await _homeScreenUseCase.getPlants();
    result.when(
      (success) {
        // here is when success result
        // TODO: it should be success.plants to retrive from the model
        emit(HomeScreenLoadPlantsState(plants: success));
      },
      (whenError) {
        // here is when error result
        emit(HomeScreenErrorState(message: whenError.message));
      },
    );
  }

  // ====================================================================
  // ====================================================================
}
