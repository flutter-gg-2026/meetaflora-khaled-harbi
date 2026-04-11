import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_recognition/features/plant_information/domain/use_cases/plant_information_use_case.dart';
import 'package:plants_recognition/features/plant_information/presentation/cubit/plant_information_state.dart';

class PlantInformationCubit extends Cubit<PlantInformationState> {
  final PlantInformationUseCase _plantInformationUseCase;

  PlantInformationCubit(this._plantInformationUseCase)
    : super(PlantInformationInitialState());

  // ====================================================================
  // ====================================================================

  Future<void> getDescription(String imageURL, String title) async {
    emit(PlantInformationDescriptionLoadingState());

    final result = await _plantInformationUseCase.getDescription(
      imageURL,
      title,
    );
    result.when(
      (success) {
        // here is when success result
        emit(
          PlantInformationFetchDescriptionState(
            description: success.description,
          ),
        );
      },
      (whenError) {
        // here is when error result
        emit(PlantInformationErrorState(message: whenError.message));
      },
    );
  }

  // ====================================================================
  // ====================================================================
}
