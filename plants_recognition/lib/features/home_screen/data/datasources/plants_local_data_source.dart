import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:plants_recognition/core/errors/network_exceptions.dart';
import 'package:plants_recognition/features/home_screen/data/models/plant_model.dart';

abstract class BaseHomeScreenLocalDataSource {
  Future<List<PlantModel>> getPlants();
}

@LazySingleton(as: BaseHomeScreenLocalDataSource)
class HomeScreenLocalDataSource implements BaseHomeScreenLocalDataSource {
  HomeScreenLocalDataSource();

  @override
  Future<List<PlantModel>> getPlants() async {
    try {
      // String
      final String jsonString = await rootBundle.loadString(
        'assets/plants.json',
      );
      // String > Map
      final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

      // Extract the list of plants
      final List<dynamic> jsonList = jsonMap['plants'];

      final List<PlantModel> plants = jsonList
          .map((plant) => PlantModel.fromJson(plant as Map<String, dynamic>))
          .toList();

      return plants;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
