import 'package:equatable/equatable.dart';

class PlantEntity extends Equatable {
  final String id;
  final String title;
  final String imageURL;

  const PlantEntity({
    required this.id,
    required this.title,
    required this.imageURL,
  });

  @override
  List<Object?> get props => [id, title, imageURL];
}
