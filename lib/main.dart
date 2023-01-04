import 'package:flutter/material.dart';
import 'package:flutter_application_4/page1.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  //runApp(ProviderScope(child: MyApp()) );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home:  Page1(),
    );
  }
}
