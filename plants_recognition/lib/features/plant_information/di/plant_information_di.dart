import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'plant_information_di.config.dart'; 

@InjectableInit(
  initializerName: 'initPlantInformation',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/plant_information'],
)
void configurePlantInformation(GetIt getIt) {
  getIt.initPlantInformation();
}
