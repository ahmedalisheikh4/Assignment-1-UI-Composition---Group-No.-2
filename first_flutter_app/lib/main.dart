import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ← 1
    var appState = context.watch<MyAppState>(); // ← 2

    return Scaffold(
      // ← 3
      body: Column(
        // ← 4
        children: [
          Text('A random AWESOME idea:'), // ← 5
          Text(appState.current.asLowerCase), // ← 6
          ElevatedButton(
            onPressed: () {
              appState.getNext(); // ← This instead of print().
            },
            child: Text('Next'),
          ),
        ], // ← 7
      ),
    );
  }
}
