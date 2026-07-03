import '../../domain/entities/shipment.dart';
import '../../domain/repository/shipment_repository.dart';
import '../mock/mock_shipments.dart';

class ShipmentRepositoryImpl implements ShipmentRepository {
  @override
  Future<List<Shipment>> getRecentShipments() async {
    await Future.delayed(const Duration(milliseconds: 300));

    return mockShipments;
  }
}
