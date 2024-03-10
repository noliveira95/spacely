import 'package:flutter/material.dart';

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({
    super.key,
    required this.onFontSizeChanged,
  });

  final Function(double) onFontSizeChanged;

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
        builder: (context, controller, child) {
          return IconButton(
            onPressed: () {
              if (controller.isOpen) {
                controller.close();
              } else {
                controller.open();
              }
            },
            icon: const Icon(
              Icons.settings,
              size: 32,
            ),
            tooltip: 'Settings',
          );
        },
        menuChildren: List.generate(3, (index) {
          return PopupMenuItem(
            child: Text(index == 0
                ? "Small Text"
                : index == 1
                    ? "Medium Text"
                    : "Large Text"),
            onTap: () {
              widget.onFontSizeChanged(index * 4 + 16);
            },
          );
        }));
  }
}
