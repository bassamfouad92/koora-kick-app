import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum AppEnvironment { staging, production }

class Env {
  Env._();

  /// Initializes the environment configuration by loading the appropriate .env file.
  ///
  /// This method must be called before accessing any environment variables.
  /// It determines the environment from the --dart-define flag and loads the
  /// corresponding file (e.g., .env.staging, .env.prod).
  static Future<void> init() async {
    // Determine the environment from the --dart-define flag. Default to 'prod'.
    const environment = String.fromEnvironment('APP_ENV', defaultValue: 'prod');

    // Load the corresponding .env file.
    await dotenv.load(fileName: ".env.$environment");
  }

  // Helper method to get a value from the environment, with a fallback.
  // Throws an exception if the key is not found and no fallback is provided.
  static String _get(String key, {String? fallback}) {
    final value = dotenv.env[key];
    if (value == null) {
      if (fallback != null) {
        return fallback;
      }
      throw Exception('FATAL: Environment variable "$key" not found.');
    }
    return value;
  }

  // --- Strongly-typed getters for your environment variables ---

  /// The name of the application, displayed in the UI.
  static String get appName => _get('APP_NAME', fallback: 'My App');

  /// The base URL for the API.
  static String get apiUrl => _get('API_URL');

  static String get googleMapsApiKey => _get('GOOGLE_MAPS_API_KEY');

  /// The API key for authenticating with the backend service.
  static String get apiKey => _get('API_KEY');

  /// A flag to determine if the app is running in debug mode.
  /// This is parsed from a string ('true' or 'false') into a boolean.
  static bool get isDebugMode => _get('DEBUG_MODE', fallback: 'false') == 'true';
  static String get firebaseAndroidApiKey => _get('FIREBASE_ANDROID_API_KEY');
  static String get firebaseIosApiKey => _get('FIREBAE_IOS_API_KEY');

  static String get firebaseAppID => _get('FIREBASE_APP_ID');
  static String get firebaseSenderID => _get('FIREBASE_SENDER_ID');
  static String get firebaseProjectID => _get('FIREBASE_PROJECT_ID');
  static String get firebaseStorageBucket => _get('FIREBASE_STORAGE_BUCKET');


  static bool get enableDevicePreview => false;

  static AppEnvironment get environment {
    const envString = String.fromEnvironment('APP_ENV', defaultValue: 'prod');
    if (envString == 'staging') {
      return AppEnvironment.staging;
    }
    return AppEnvironment.production;
  }

  // A simple boolean getter for easy checks
  static bool get isStaging => environment == AppEnvironment.staging;

}