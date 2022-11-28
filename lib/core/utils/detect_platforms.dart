import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetectPlatform {
  Platforms currentPlatform = Platforms.DONTCARE;

  Platforms detectOperationSystem() {
    if (kIsWeb) {
      currentPlatform = Platforms.ANDROID;
      return Platforms.WEB;
    }
    switch (Platform.operatingSystem) {
      case "ios":
        currentPlatform = Platforms.IOS;
        return Platforms.IOS;
      case "android":
        currentPlatform = Platforms.ANDROID;
        return Platforms.ANDROID;
      default:
        currentPlatform = Platforms.DONTCARE;
        return Platforms.DONTCARE;
    }
  }
  Color colorBasedOnCurrentPlatform() {
    switch (currentPlatform) {
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
