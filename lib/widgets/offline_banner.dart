import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class OfflineBanner extends StatelessWidget {
  const OfflineBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (context, connectivity, child) {
        final isOffline = connectivity == ConnectivityResult.none;
        return isOffline
            ? Container(
                color: Colors.red,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'You are offline, please reconnect to place your order',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            : const SizedBox.shrink();
      },
      child: const SizedBox.shrink(),
    );
  }
}