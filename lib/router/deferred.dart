import 'package:flutter/material.dart';

class DeferredWidget extends StatelessWidget {
  final Future<void> Function() loadLibrary;
  final Widget Function() builder;

  const DeferredWidget({required this.loadLibrary, required this.builder, super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadLibrary(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            backgroundColor: Colors.white,
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return const Scaffold(
            backgroundColor: Colors.white,
            body: Center(child: Text('Error loading page')),
          );
        } else {
          return builder();
        }
      },
    );
  }
}
