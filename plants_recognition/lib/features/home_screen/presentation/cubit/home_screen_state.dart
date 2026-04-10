import 'package:equatable/equatable.dart';
import 'package:plants_recognition/features/home_screen/domain/entities/plant_entity.dart';

abstract class HomeScreenState extends Equatable {
  const HomeScreenState();

  @override
  List<Object?> get props => [];
}

class HomeScreenInitialState extends HomeScreenState {}

class HomeScreenErrorState extends HomeScreenState {
  final String message;
  const HomeScreenErrorState({required this.message});

  // props is a list of values that define whether two objects are equal
  // Equatable uses props to compare values inside the object
  // props compares the value not the reference
  // helps with rebuilding the UI WHEN THE DATA CHANGES only
  @override
  List<Object?> get props => [message];
}

class HomeScreenLoadPlants extends HomeScreenState {
  final List<PlantEntity> plants;

  const HomeScreenLoadPlants({required this.plants});
}
