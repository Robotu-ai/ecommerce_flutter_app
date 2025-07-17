// lib/core/network/network_info_impl.dart

import 'package:connectivity_plus/connectivity_plus.dart';
import 'network_info.dart';

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  Future<bool> get isConnected async {
    final result = await connectivity.checkConnectivity();
    // Considera conectado si es wifi o mobile
    return [ConnectivityResult.wifi, ConnectivityResult.mobile].contains(result);
  }

  Stream<bool> get onConnectivityChanged =>
      connectivity.onConnectivityChanged.map(
        (result) => [ConnectivityResult.wifi, ConnectivityResult.mobile].contains(result),
      );

  Future<bool> get isConnectedToWiFi async {
    final result = await connectivity.checkConnectivity();
    return result == ConnectivityResult.wifi;
  }

  Future<bool> get isConnectedToMobile async {
    final result = await connectivity.checkConnectivity();
    return result == ConnectivityResult.mobile;
  }

  Future<List<ConnectivityResult>> get connectivityType async {
    return await connectivity.checkConnectivity();
  }
}