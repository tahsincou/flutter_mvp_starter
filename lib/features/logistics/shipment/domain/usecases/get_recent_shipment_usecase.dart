import '../entities/shipment.dart';
import '../repository/shipment_repository.dart';

class GetRecentShipmentsUseCase {
  final ShipmentRepository repository;

  const GetRecentShipmentsUseCase(this.repository);

  Future<List<Shipment>> call() {
    return repository.getRecentShipments();
  }
}
