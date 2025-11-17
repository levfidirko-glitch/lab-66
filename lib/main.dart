import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'third_screen.dart';

void main() {
  runApp(const NavLabApp());
}

class NavLabApp extends StatelessWidget {
  const NavLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 6 Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              child: const Text("push → Second"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SecondScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("pushNamed → /second"),
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
            ),
            ElevatedButton(
              child: const Text("pushReplacement → Second"),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const SecondScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("pushAndRemoveUntil → Second"),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const SecondScreen()),
                  (route) => false,
                );
              },
            ),
            ElevatedButton(
              child: const Text("pushNamedAndRemoveUntil → /second"),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/second',
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
