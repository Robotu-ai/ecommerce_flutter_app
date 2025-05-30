import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkStatus {
  static Future<bool> isOnline() async {
    final result = await Connectivity().checkConnectivity();
    return result != ConnectivityResult.none;
  }
}