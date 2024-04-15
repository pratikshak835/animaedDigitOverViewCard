import 'package:flutter/material.dart';

import 'over_view_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OverviewCard(
          initialValue: 12345670,
          title: "card",
          boxShadowColor: Colors.black.withOpacity(0.5),
          // count: "1234",
          textShadowColor: Colors.black.withOpacity(1),
          gradiantColors: const [Colors.blue, Colors.purpleAccent],
        ),
      ),
    );
  }
}
