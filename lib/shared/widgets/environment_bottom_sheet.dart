import 'package:flutter/material.dart';
import 'package:logistic_operation/core/config/app_config.dart';
import 'package:logistic_operation/core/config/environment.dart';

Future<bool?> showEnvironmentBottomSheet(BuildContext context) async {
  Environment selected = AppConfig.environment;
  final availableEnvironments = [
    Environment.demo,
    Environment.development,
    Environment.staging,
    Environment.production,
  ];
  return await showModalBottomSheet<bool>(
    context: context,
    builder: (_) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Environment',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 16),

                ...availableEnvironments.map(
                  (environment) => RadioListTile<Environment>(
                    value: environment,
                    groupValue: selected,
                    title: Text(environment.title),
                    subtitle: Text(environment.description),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() => selected = value);
                      }
                    },
                  ),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () async {
                      if (selected != AppConfig.environment) {
                        await AppConfig.changeEnvironment(selected);

                        if (context.mounted) {
                          Navigator.pop(context, true);
                        }
                      } else {
                        Navigator.pop(context, false);
                      }
                    },
                    child: const Text('Apply'),
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
