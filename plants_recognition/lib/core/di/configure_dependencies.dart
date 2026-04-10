import 'package:get_it/get_it.dart';
import 'package:plants_recognition/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:plants_recognition/features/home_screen/di/home_screen_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
    configureHomeScreen(getIt);
}
