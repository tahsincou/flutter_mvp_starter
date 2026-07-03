import '../entities/shipment.dart';

abstract interface class ShipmentRepository {
  Future<List<Shipment>> getRecentShipments();
}
