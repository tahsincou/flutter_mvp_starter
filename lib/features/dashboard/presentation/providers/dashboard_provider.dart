import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistic_operation/features/dashboard/domain/entities/dashboard_summary.dart';
import 'package:logistic_operation/features/dashboard/domain/utils/dashboard_summary_calculator.dart';
import 'package:logistic_operation/features/logistics/shipment/presentation/providers/shipment_notifier.dart';

import '../../data/repository/dashboard_repository_impl.dart';
import '../../domain/repository/dashboard_repository.dart';
import '../../domain/usecases/get_dashboard_summary_usecase.dart';

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  return DashboardRepositoryImpl();
});

final getDashboardSummaryUseCaseProvider = Provider<GetDashboardSummaryUseCase>(
  (ref) {
    return GetDashboardSummaryUseCase(ref.read(dashboardRepositoryProvider));
  },
);

final dashboardSummaryProvider = Provider<DashboardSummary>((ref) {
  final shipments = ref.watch(
    shipmentNotifierProvider.select((state) => state.shipments),
  );

  return DashboardSummaryCalculator.calculate(shipments);
});
