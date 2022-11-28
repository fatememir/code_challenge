import 'dart:io';
import 'package:code_challenge/main.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';


import 'package:flutter/foundation.dart';

class DetectPlatform{
  // final DetectPlatform = locator<DetectPlatform>();

  // DetectPlatform._() {}

    Platforms detectOperationSystem() {
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


