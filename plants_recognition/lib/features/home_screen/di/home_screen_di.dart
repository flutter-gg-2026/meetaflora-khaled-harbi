import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'home_screen_di.config.dart'; 

@InjectableInit(
  initializerName: 'initHomeScreen',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/home_screen'],
)
void configureHomeScreen(GetIt getIt) {
  getIt.initHomeScreen();
}
