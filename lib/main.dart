import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoes/src/models/models.dart';
import 'package:shoes/src/screens/screens.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_) => ShoeModel() )
      ],
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ShoesScreen(),
    );
  }
}
