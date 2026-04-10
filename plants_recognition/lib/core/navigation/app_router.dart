import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_recognition/features/home_screen/presentation/pages/home_screen_feature_screen.dart';
import 'package:plants_recognition/features/home_screen/presentation/cubit/home_screen_cubit.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.homeScreen,
    routes: [
      GoRoute(
        path: Routes.homeScreen,
        builder: (context, state) => BlocProvider(
          // Fire state immediately when Cubit is created
          create: (context) => HomeScreenCubit(GetIt.I.get())..getPlants(),
          child: const HomeScreenFeatureScreen(),
        ),
      ),
    ],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
