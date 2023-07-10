import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('メニューA')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(280, 50),
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: () {
            context.go('/');
          },
          child: const Text('メニューA'),
        ),
      ),
    );
  }
}
