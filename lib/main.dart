import 'package:flutter/material.dart';
import 'package:notes_app1/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {

  // initial hive
  await Hive.initFlutter();
  
  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
