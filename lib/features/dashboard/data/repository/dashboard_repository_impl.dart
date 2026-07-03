import '../../domain/entities/dashboard_summary.dart';
import '../../domain/repository/dashboard_repository.dart';
import '../mock/mock_dashboard_summary.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  @override
  Future<DashboardSummary> getSummary() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return mockDashboardSummary;
  }
}
