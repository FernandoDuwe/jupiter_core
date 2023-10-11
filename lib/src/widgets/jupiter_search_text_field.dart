import "dart:async";

import "package:flutter/material.dart";
import "package:jupiter_core/jupiter_core.dart";

class JupiterSearchTextField extends StatelessWidget {
  final InputDecoration? inputDecoration;
  final JupiterOnGetString onSearch;
  final Duration? customDuration;
  Timer? _timer;

  JupiterSearchTextField(
      {required this.onSearch,
      this.inputDecoration,
      this.customDuration,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: (inputDecoration ??
          InputDecoration(
              labelText: "Pesquisar", suffixIcon: Icon(Icons.search))),
      onChanged: (value) {
        if (_timer != null) _timer!.cancel();

        _timer = Timer(
          (customDuration ?? Duration(seconds: 1)),
          () {
            onSearch(value);
          },
        );
      },
    );
  }
}
