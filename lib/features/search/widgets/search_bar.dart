import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final bool enabled;
  final bool autofocus;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? onCancel;
  final FocusNode? focusNode;

  const SearchBarWidget({
    super.key,
    this.enabled = true,
    this.autofocus = false,
    this.controller,
    this.onChanged,
    this.onTap,
    this.onCancel,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final hasText = controller?.text.isNotEmpty ?? false;

    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: cs.outline),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search, color: cs.primary),
          ),
          Expanded(
            child: TextField(
              enabled: enabled,
              autofocus: autofocus,
              controller: controller,
              focusNode: focusNode,
              onChanged: onChanged,
              onTap: onTap,
              decoration: InputDecoration(
                hintText: 'Buscar por tipo, corte y/o nombre',
                border: InputBorder.none,
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
              ),
              style: TextStyle(color: cs.onSurface),
            ),
          ),
          if (hasText)
            IconButton(
              icon: Icon(Icons.close, color: cs.onSurfaceVariant),
              onPressed: () {
                controller?.clear();
                onCancel?.call();
              },
              tooltip: 'Cancelar búsqueda',
            ),
        ],
      ),
    );
  }
}