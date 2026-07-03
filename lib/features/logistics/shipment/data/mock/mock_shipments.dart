import '../../domain/entities/shipment.dart';

const mockShipments = [
  Shipment(trackingId: 'TRK-1001', customer: 'John Doe', status: 'Delivered'),
  Shipment(trackingId: 'TRK-1002', customer: 'Alice', status: 'Pending'),
  Shipment(trackingId: 'TRK-1003', customer: 'David', status: 'Failed'),
];
