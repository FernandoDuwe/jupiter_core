// Types
import 'package:flutter/material.dart';
import 'package:jupiter_core/src/widgets/jupiter_layout_builder.dart';

typedef JupiterJson = Map<String, dynamic>;

// Events
typedef JupiterOnGetString = void Function(String value);

typedef JupiterLayoutBuilderOnBuild = Widget Function(
    BuildContext context,
    BoxConstraints constraints,
    JupiterScreenSize screenSize,
    JupiterPlataform plataform);

// Enums
enum JupiterAppType { production, tests, development }

enum JupiterScreenSize { big, medium, small }

enum JupiterPlataform { android, ios, macos, windows, linux, web }
