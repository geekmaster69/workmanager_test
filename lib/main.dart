import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';
import 'config/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Enviroments.initEnviroments();
  await Workmanager().initialize(callbackDispatcher, isInDebugMode: true);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Workmanager test',
      home: Scaffold(body: HomePAge()),
    );
  }
}

class HomePAge extends StatelessWidget {
  const HomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text(Enviroments.apiUrl),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Sin Workmanager')),
          ElevatedButton(
              onPressed: () {
                Workmanager().registerOneOffTask(
                    fetchBackgroundTaskKey, fetchBackgroundTaskKey);
              },
              child: const Text('Con Workmanager')),
        ]),
      ),
    );
  }
}
