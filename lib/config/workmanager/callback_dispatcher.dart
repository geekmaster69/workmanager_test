import 'package:work_manager_test/config/constants/enviroments.dart';
import 'package:workmanager/workmanager.dart';

const fetchBackgroundTaskKey = 'fetch-backround-unitImage';
const fetchPeriodicBackgroundTaskKey = 'fetch-periodic-backround-unitImage';

@pragma(
    'vm:entry-point') // Mandatory if the App is obfuscated or using Flutter 3.1+
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    switch (task) {
      case fetchBackgroundTaskKey:
        print(
            '******************* Work Manager trabajdno existosamente *********************');

        print(Enviroments.apiUrl);
        break;
      case fetchPeriodicBackgroundTaskKey:
        break;

      case Workmanager.iOSBackgroundTask:
        break;
    }

    return true;

    // print("Native: called background task: $task"); //simpleTask will be emitted here.
    // return Future.value(true);
  });
}
