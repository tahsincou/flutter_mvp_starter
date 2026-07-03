import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import 'dashboard_provider.dart';
import 'dashboard_state.dart';

final dashboardNotifierProvider =
    StateNotifierProvider<DashboardNotifier, DashboardState>(
      (ref) => DashboardNotifier(ref),
    );

class DashboardNotifier extends StateNotifier<DashboardState> {
  DashboardNotifier(this.ref) : super(const DashboardState());

  final Ref ref;

  Future<void> loadSummary() async {
    state = state.copyWith(isLoading: true);

    try {
      final summary = await ref.read(getDashboardSummaryUseCaseProvider)();

      state = state.copyWith(isLoading: false, summary: summary);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
