import 'package:flutter/material.dart';

class TripPage extends StatefulWidget {
  const TripPage({super.key});

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text('Trip Participants'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          null;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
