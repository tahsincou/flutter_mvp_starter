import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistic_operation/features/logistics/shipment/data/repository/shipment_repository_impl.dart';
import 'package:logistic_operation/features/logistics/shipment/domain/usecases/get_recent_shipment_usecase.dart';

import '../../domain/repository/shipment_repository.dart';

final shipmentRepositoryProvider = Provider<ShipmentRepository>((ref) {
  return ShipmentRepositoryImpl();
});

final getRecentShipmentsUseCaseProvider = Provider<GetRecentShipmentsUseCase>((
  ref,
) {
  return GetRecentShipmentsUseCase(ref.read(shipmentRepositoryProvider));
});
