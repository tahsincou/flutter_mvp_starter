import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:logistic_operation/core/services/theme_service.dart';
import 'package:logistic_operation/core/theme/theme_notifier.dart';

final themeServiceProvider = Provider((ref) => ThemeService());

final themeModeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((
  ref,
) {
  return ThemeNotifier(ref.read(themeServiceProvider));
});
