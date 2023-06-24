import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameNotifier extends Notifier<TextEditingController> {
  @override
  build() {
    return TextEditingController(text: 'NameNotifier');
  }
}

final nameNotifierProvider =
    NotifierProvider.autoDispose<NameNotifier, TextEditingController>(
        NameNotifier.new);
