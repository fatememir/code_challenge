import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              DetectOperationSystem().name,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }

  Platforms DetectOperationSystem() {
    // var op = {"android": test1(), "ios": test2(),"web":test2()};
    // if(kIsWeb){op["web"];}
    if (kIsWeb) return Platforms.WEB;
    switch (Platform.operatingSystem) {
      case "ios":
        return Platforms.IOS;
      case "android":
        return Platforms.ANDROID;
      default:
        return Platforms.DONTCARE;
    }
  }
}

enum Platforms { ANDROID, IOS, WEB, DONTCARE }
