import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetectPlatform {

  Platforms detectOperationSystem() {
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
  Color colorBasedOnPlatform(Platforms platform) {
    switch (platform) {
      case Platforms.ANDROID:
        return const Color.fromRGBO(255, 0, 0, 1);
      case Platforms.IOS:
        return const Color.fromRGBO(0, 0, 255, 1);
      case Platforms.WEB:
        return const Color.fromRGBO(0, 255, 0, 1);
      case Platforms.DONTCARE:
        return const Color.fromRGBO(255, 255, 255, 1);
    }
  }
}

enum Platforms { ANDROID, IOS, WEB, DONTCARE }
