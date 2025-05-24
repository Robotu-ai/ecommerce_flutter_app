import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LastUpdatedBanner extends StatelessWidget {
  final DateTime? lastUpdated;

  const LastUpdatedBanner({super.key, this.lastUpdated});

  @override
  Widget build(BuildContext context) {
    if (lastUpdated == null) return const SizedBox.shrink();
    final formatted = DateFormat('yyyy-MM-dd HH:mm').format(lastUpdated!);
    return Container(
      color: Colors.yellow[100],
      padding: const EdgeInsets.all(8),
      child: Text('Last updated at $formatted', style: const TextStyle(fontSize: 12)),
    );
  }
}