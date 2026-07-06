import 'package:flutter/material.dart';
import 'package:logistic_operation/core/providers/locale_provider.dart';
import 'package:logistic_operation/core/router/router.dart';
import 'package:logistic_operation/core/providers/theme_provider.dart';
import '../l10n/app_localizations.dart';
import '../core/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Logistic Operation',
      routerConfig: AppRouter.router,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ref.watch(themeModeProvider),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: ref.watch(localeProvider),
    );
  }
}
