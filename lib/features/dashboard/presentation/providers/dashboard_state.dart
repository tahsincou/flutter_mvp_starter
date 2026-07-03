import '../../domain/entities/dashboard_summary.dart';

class DashboardState {
  final bool isLoading;
  final DashboardSummary? summary;
  final String? error;

  const DashboardState({this.isLoading = false, this.summary, this.error});

  DashboardState copyWith({
    bool? isLoading,
    DashboardSummary? summary,
    String? error,
  }) {
    return DashboardState(
      isLoading: isLoading ?? this.isLoading,
      summary: summary ?? this.summary,
      error: error,
    );
  }
}
