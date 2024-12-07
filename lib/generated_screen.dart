import 'package:flutter/material.dart';

class GeneratedScreen extends StatelessWidget {
  final int screenNumber;
  final int totalScreens;

  const GeneratedScreen({
    super.key,
    required this.screenNumber,
    required this.totalScreens,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen $screenNumber'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false,
                arguments: 'Hello from screen $screenNumber');
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is screen $screenNumber',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false,
                    arguments: 'Hello from screen $screenNumber');
              },
              child: const Text('Back to First Screen'),
            ),
            const SizedBox(height: 20),
            if (screenNumber < totalScreens)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeneratedScreen(
                        screenNumber: screenNumber + 1,
                        totalScreens: totalScreens,
                      ),
                    ),
                  );
                },
                child: Text('Go to screen ${screenNumber + 1}'),
              ),
            const SizedBox(height: 5),
            if (screenNumber > 1)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeneratedScreen(
                        screenNumber: screenNumber - 1,
                        totalScreens: totalScreens,
                      ),
                    ),
                  );
                },
                child: Text('Go to screen ${screenNumber - 1}'),
              ),
          ],
        ),
      ),
    );
  }
}
