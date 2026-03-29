import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/services/connectivity_manager.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:koora_kick/utils/logger/app_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AppConnectivityExtension on WidgetRef {
  void listenToConnectivity(BuildContext context) {
    listen(connectivityManagerProvider, (previous, next) {

      AppLogger.instance.info("listenToConnectivity");

      if (next is AsyncData<ConnectivityState>) {
        final state = next.value;
        final prevState = previous?.valueOrNull;

        if (prevState != null && prevState != state) {
          if (state == ConnectivityState.connected) {
            SnackBarUtils.showSuccess("Internet restored");
          } else if (state == ConnectivityState.disconnected) {
            SnackBarUtils.showError("No internet connectivity");
          }
        }
      }
    });
  }
}
