import 'package:equatable/equatable.dart';

abstract class PlantInformationState extends Equatable {
  const PlantInformationState();

  @override
  List<Object?> get props => [];
}

// ====================================================================

class PlantInformationInitialState extends PlantInformationState {}

// ====================================================================

class PlantInformationFetchDescriptionState extends PlantInformationState {
  final String description;

  const PlantInformationFetchDescriptionState({required this.description});
}

// ====================================================================

class PlantInformationDescriptionLoadingState extends PlantInformationState {}

// ====================================================================

class PlantInformationErrorState extends PlantInformationState {
  final String message;
  const PlantInformationErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

// ====================================================================
