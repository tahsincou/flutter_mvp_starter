import '../../domain/entities/shipment.dart';

class ShipmentState {
  final bool isLoading;
  final List<Shipment> shipments;
  final String? error;

  const ShipmentState({
    this.isLoading = false,
    this.shipments = const [],
    this.error,
  });

  ShipmentState copyWith({
    bool? isLoading,
    List<Shipment>? shipments,
    String? error,
  }) {
    return ShipmentState(
      isLoading: isLoading ?? this.isLoading,
      shipments: shipments ?? this.shipments,
      error: error,
    );
  }
}
