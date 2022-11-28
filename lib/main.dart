
import 'package:code_challenge/core/routes/route_generator.dart';
import 'package:code_challenge/core/utils/detect_platforms.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'package:injectable/injectable.dart';


GetIt locator = GetIt.instance;

void main() async{
  // await configureInjection(Environment.prod);
  initLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: '/',
          title: 'Taha Tech',
    );
  }
}

initLocator() {
  locator.registerFactory<DetectPlatform>(() => DetectPlatform());
}



