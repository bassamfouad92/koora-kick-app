import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/utils/units/unit_formatter.dart';
import 'package:koora_kick/utils/units/unit_types.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_settings_provider.g.dart';

@riverpod
class AppSettingsNotifier extends _$AppSettingsNotifier {
  @override
  FutureOr<AppSettingsData> build() async {
    final store = ref.read(appSettingsStoreProvider);
    final data = await store.fetch() ?? const AppSettingsData();
    return data;
  }

  Future<void> updateSettings(AppSettingsData data) async {
    final store = ref.read(appSettingsStoreProvider);
    await store.save(data);
    state = AsyncData(data);
  }
}

extension AppSettingsSyncX on AppSettingsData {
  UnitType get preferredDistanceUnit => UnitType.fromString(distanceUnit);
  TimeFormatStyle get preferredTimeFormat => TimeFormatStyle.fromString(timeFormat);
}
