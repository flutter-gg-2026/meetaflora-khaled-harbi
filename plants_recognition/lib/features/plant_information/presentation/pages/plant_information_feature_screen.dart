import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:plants_recognition/features/home_screen/domain/entities/plant_entity.dart';
import 'package:plants_recognition/features/plant_information/presentation/cubit/plant_information_cubit.dart';
import 'package:plants_recognition/features/plant_information/presentation/cubit/plant_information_state.dart';

class PlantInformationFeatureScreen extends StatelessWidget {
  final PlantEntity plant;
  const PlantInformationFeatureScreen({super.key, required this.plant});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlantInformationCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('About', style: TextStyle(fontSize: 24)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: .start,
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Center(
                child: Column(
                  children: [
                    AnyImageView(
                      imagePath: plant.imageURL,
                      height: 300,
                      width: 300,
                      borderRadius: .circular(12),
                    ),
                    Gap(22),
                    Text(
                      plant.title,
                      style: TextStyle(fontWeight: .bold, fontSize: 22),
                    ),
                    Gap(22),
                    FilledButton(
                      onPressed: () {
                        cubit.getDescription(plant.imageURL, plant.title);
                      },
                      child: Text(
                        'More information',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: .w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BlocBuilder<PlantInformationCubit, PlantInformationState>(
              builder: (context, state) {
                print(state);
                switch (state) {
                  case PlantInformationDescriptionLoadingState _:
                    return Center(child: CircularProgressIndicator());
                  case PlantInformationFetchDescriptionState _:
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          state.description,
                          textAlign: .center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  default:
                    return SizedBox.shrink();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
