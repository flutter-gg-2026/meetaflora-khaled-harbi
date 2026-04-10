import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_recognition/features/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:plants_recognition/features/home_screen/presentation/cubit/home_screen_state.dart';

class HomeScreenFeatureScreen extends StatelessWidget {
  const HomeScreenFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // to trigger events
    final _ = context.read<HomeScreenCubit>();
    return Scaffold(
      appBar: AppBar(title: const Text('HomeScreen Feature Screen')),
      body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          print(state);
          switch (state) {
            case HomeScreenInitialState _:
              return const Center(child: CircularProgressIndicator());
            case HomeScreenErrorState _:
              return Center(child: CircularProgressIndicator());
            case HomeScreenLoadPlants _:
              // no need to trigger event here because it was triggered in navigation
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: state.plants.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        AnyImageView(imagePath: state.plants[index].imageURL),
                        Text(state.plants[index].title),
                      ],
                    ),
                  );
                },
              );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
