import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              child: const Text("Pop ← Back"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text("push → ThirdScreen"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ThirdScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("popAndPushNamed → /third"),
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/third');
              },
            ),
          ],
        ),
      ),
    );
  }
}
