import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampusDual for Android',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'CampusDual for Android'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Kalender',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_sharp),
              label: 'Notenübersicht',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'Dokumente',
            backgroundColor: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
