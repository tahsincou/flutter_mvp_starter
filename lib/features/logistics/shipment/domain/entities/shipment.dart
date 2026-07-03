class Shipment {
  final String trackingId;
  final String customer;
  final String status;

  const Shipment({
    required this.trackingId,
    required this.customer,
    required this.status,
  });
}
