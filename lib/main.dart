import 'package:code_challenge/core/routes/route_generator.dart';
import 'package:code_challenge/core/utils/detect_platforms.dart';
import 'package:code_challenge/core/utils/string_limiter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';



GetIt locator = GetIt.instance;

void main() async{
  runApp(const MyApp());
  initLocator();


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
  locator.registerFactory<StringLimiter>(() => StringLimiter());

}



