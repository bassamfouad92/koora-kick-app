import 'package:koora_kick/common/data/hive/hive_registrar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:koora_kick/config/env.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AppTaskRegistrar {
  static late final SharedPreferences sharedPreferences;

  static Future<void> registerAll() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _registerHive();
    await _registerSharedPreferences();
    await _registerPreferredOrientations();
    await _registerLocalization();
    await _registerEnv();
    await _registerFirebase();
  }

  static Future<void> _registerSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> _registerFirebase() async {}

  static Future<void> _registerHive() async {
    await HiveRegistrar.init();
  }

  static Future<void> _registerEnv() async {
    await Env.init();
  }

  static Future<void> _registerLocalization() async {
    await EasyLocalization.ensureInitialized();
  }

  static Future<void> _registerPreferredOrientations() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
