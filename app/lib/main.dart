import 'package:flutter/material.dart';
import 'package:warscapes/src/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: WarscapesApp()));
}
