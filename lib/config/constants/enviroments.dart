import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroments{
  static Future<void> initEnviroments() async{
    await dotenv.load(fileName: '.env');
  }

  static String apiUrl = dotenv.env['API_URL'] ?? 'No esta configurada el API_URL';
}