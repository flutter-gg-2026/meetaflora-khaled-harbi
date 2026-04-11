import 'package:equatable/equatable.dart';

class PlantDescriptionEntity extends Equatable {
  final String description;

  const PlantDescriptionEntity({required this.description});

  @override
  List<Object?> get props => [description];
}
