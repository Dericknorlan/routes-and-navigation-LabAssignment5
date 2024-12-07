import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int currentPageIndex = 2; // Indeks untuk ThirdScreen

  final List<String> routes = ['/', '/second', '/third'];

  @override
  Widget build(BuildContext context) {
    final String receivedData =
        ModalRoute.of(context)?.settings.arguments as String? ??
            'No Data Passed';

    return Scaffold(
      appBar: AppBar(
          title: const Text('Third Screen'),
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false,
                    arguments: 'Hello from third screen');
              },
              icon: Icon(Icons.arrow_back))),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(receivedData),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false,
                      arguments: 'Hello from third screen');
                },
                child: const Text('Go Back to First Screen'),
              ),
            ]),
      ),
     bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
          Navigator.pushNamedAndRemoveUntil(
              context, routes[index], (route) => false,
              arguments: 'Hello from first screen');
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: 'First Page',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Second Page',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: 'Third Page',
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
