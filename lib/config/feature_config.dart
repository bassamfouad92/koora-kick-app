import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class FeatureConfig {
  bool get isBannerEnabled;
  bool get isNextRideEnabled;
}
final featureConfigProvider = Provider<FeatureConfig>((ref) => DashboardConfig());

class DashboardConfig implements FeatureConfig {
  @override
  bool get isBannerEnabled => true;
  @override
  bool get isNextRideEnabled => true;
}