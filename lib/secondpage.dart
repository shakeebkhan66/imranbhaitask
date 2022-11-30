import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String item;

  SecondScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Second Screen️'),
      ),
      body: Center(
          child: Column(
            children: [
              Spacer(),
              Center(
                child: Text(
                  'You clicked on: $item',
                  style: const TextStyle(fontSize: 32),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pop(context);
                },
                child: const Text('Go back'),
              ),
              const Spacer(),
            ],
          )),
    );
  }
}