import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:plants_recognition/core/navigation/routers.dart';
import 'package:plants_recognition/core/theme/cubit/theme_cubit.dart';
import 'package:plants_recognition/features/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:plants_recognition/features/home_screen/presentation/cubit/home_screen_state.dart';

class HomeScreenFeatureScreen extends StatelessWidget {
  const HomeScreenFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // to trigger events
    final _ = context.read<HomeScreenCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plants', style: TextStyle(fontSize: 24)),
        actions: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              final isDarkMode = state.themeData.brightness == Brightness.dark;

              return IconButton(
                onPressed: () {
                  context.read<ThemeCubit>().switchTheme();
                },
                icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
                color: isDarkMode ? Colors.white : Colors.black,
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          switch (state) {
            case HomeScreenInitialState _:
              return const Center(child: CircularProgressIndicator());
            case HomeScreenErrorState _:
              return Center(child: CircularProgressIndicator());
            case HomeScreenLoadPlantsState _:
              // no need to trigger event here because it was triggered in navigation
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: state.plants.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        // Take all the remaining available space inside a Row or Column
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Card(
                              child: AnyImageView(
                                imagePath: state.plants[index].imageURL,
                                fit: .cover,
                                // Expand to fill all available width from the parent
                                width: double.infinity,
                                borderRadius: .circular(8),
                                onTap: () {
                                  context.push(
                                    Routes.plantInformation,
                                    extra: state.plants[index],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Text(
                          state.plants[index].title,
                          style: TextStyle(fontWeight: .bold),
                        ),
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
