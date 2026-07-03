import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import 'shipment_provider.dart';
import 'shipment_state.dart';

final shipmentNotifierProvider =
    StateNotifierProvider<ShipmentNotifier, ShipmentState>(
      (ref) => ShipmentNotifier(ref),
    );

class ShipmentNotifier extends StateNotifier<ShipmentState> {
  ShipmentNotifier(this.ref) : super(const ShipmentState());

  final Ref ref;

  Future<void> loadShipments() async {
    state = state.copyWith(isLoading: true);

    try {
      final shipments = await ref.read(getRecentShipmentsUseCaseProvider)();

      state = state.copyWith(isLoading: false, shipments: shipments);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
