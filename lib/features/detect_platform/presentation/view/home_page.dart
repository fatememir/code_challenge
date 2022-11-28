

import 'package:code_challenge/core/utils/detect_platforms.dart';
import 'package:code_challenge/features/detect_platform/presentation/view/widget/box.dart';
import 'package:code_challenge/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});


  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  String? platformName ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomBox(
                  color: colorBasedOnPlatform(locator<DetectPlatform>().detectOperationSystem()),
                  platformName:platformName),
              GestureDetector(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                  child: Text("press for show yor platform"),

                ),
                onTap: (){
                  setState(() {
                    platformName = (locator<DetectPlatform>().detectOperationSystem().name);
                  });
                },
              )


            ],
          ),
        ),
      ),
    );
  }

  Color colorBasedOnPlatform(Platforms platform){
    switch(platform){
      case Platforms.ANDROID:
        return const Color.fromRGBO(255, 0, 0,1);
      case Platforms.IOS:
        return const Color.fromRGBO(0, 255, 0, 1);
      case Platforms.WEB:
        return const Color.fromRGBO(0, 0, 255, 1);
      case Platforms.DONTCARE: return const Color.fromRGBO(255, 255, 255, 1);

    }
  }

}