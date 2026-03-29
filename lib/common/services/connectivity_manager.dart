import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_manager.g.dart';

enum ConnectivityState { connected, disconnected, unknown }

@Riverpod(keepAlive: true)
class ConnectivityManager extends _$ConnectivityManager {
  @override
  Stream<ConnectivityState> build() async* {
    yield* Connectivity().onConnectivityChanged.map((results) {
      if (results.contains(ConnectivityResult.none)) {
        return ConnectivityState.disconnected;
      }
      return ConnectivityState.connected;
    });
  }

  Future<ConnectivityState> checkCurrent() async {
    final results = await Connectivity().checkConnectivity();
    if (results.contains(ConnectivityResult.none)) {
      return ConnectivityState.disconnected;
    }
    return ConnectivityState.connected;
  }
}
