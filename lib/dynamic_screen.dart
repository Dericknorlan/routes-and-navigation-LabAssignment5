import 'package:flutter/material.dart';
import 'package:navigation_codelab/generated_screen.dart';

class DynamicScreen extends StatelessWidget {
  const DynamicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int numberOfScreens =
        ModalRoute.of(context)?.settings.arguments as int? ?? 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Screens'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false,
                arguments: 'Hello from dynamic screens');
          },
        ),
      ),
      body: ListView.builder(
        itemCount: numberOfScreens,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text('Screen ${index + 1}'),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeneratedScreen(
                        screenNumber: index + 1,
                        totalScreens: numberOfScreens,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
