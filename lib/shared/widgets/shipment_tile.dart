import 'package:flutter/material.dart';

class ShipmentTile extends StatelessWidget {
  final String trackingId;
  final String customer;
  final String status;

  const ShipmentTile({
    super.key,
    required this.trackingId,
    required this.customer,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.local_shipping),
        title: Text(trackingId),
        subtitle: Text(customer),
        trailing: Text(status),
      ),
    );
  }
}
