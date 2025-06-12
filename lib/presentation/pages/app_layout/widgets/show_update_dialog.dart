// lib/presentation/pages/app_layout/widgets/show_update_dialog.dart
import 'package:flutter/material.dart';

// TODO: Customize this dialog as needed
Future<void> showUpdateDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // User must tap button!
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: const Text('Update Available'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('A new version of the app is available.'),
              Text('Please update to the latest version.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Update Now'),
            onPressed: () {
              // TODO: Implement update logic (e.g., open store URL)
              Navigator.of(dialogContext).pop(); // Close dialog
            },
          ),
          TextButton(
            child: const Text('Later'),
            onPressed: () {
              Navigator.of(dialogContext).pop(); // Close dialog
            },
          ),
        ],
      );
    },
  );
}
