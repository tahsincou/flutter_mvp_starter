import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistic_operation/core/providers/providers.dart';
import 'package:logistic_operation/features/dashboard/domain/entities/dashboard_summary.dart';
import 'package:logistic_operation/features/dashboard/domain/utils/dashboard_summary_calculator.dart';
import 'package:logistic_operation/features/logistics/shipment/presentation/providers/shipment_notifier.dart';

import '../../domain/usecases/get_dashboard_summary_usecase.dart';

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
