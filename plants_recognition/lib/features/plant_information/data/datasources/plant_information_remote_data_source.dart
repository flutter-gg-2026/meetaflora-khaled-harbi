import 'package:injectable/injectable.dart';
import 'package:plants_recognition/core/errors/network_exceptions.dart';
import 'package:plants_recognition/core/network/dio_client.dart';
import 'package:plants_recognition/core/network/gemini_methods.dart';
import 'package:plants_recognition/features/plant_information/data/models/plant_description_model.dart';

abstract class BasePlantInformationRemoteDataSource {
  Future<PlantDescriptionModel> getDescription(String imageURL, String title);
}

// ====================================================================
// ====================================================================

@LazySingleton(as: BasePlantInformationRemoteDataSource)
class PlantInformationRemoteDataSource
    implements BasePlantInformationRemoteDataSource {
  final DioClient _dioClient;

  PlantInformationRemoteDataSource(this._dioClient);

  @override
  Future<PlantDescriptionModel> getDescription(
    String imageURL,
    String title,
  ) async {
    try {
      final generatedText = await _dioClient.getDescription(imageURL, title);
      return PlantDescriptionModel(description: generatedText);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  // ====================================================================
  // ====================================================================
}
