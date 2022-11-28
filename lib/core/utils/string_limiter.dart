import 'package:flutter/material.dart';

class StringLimiter{

  String limitedString(String input,inputPosition) {
    var limitedString = input;
    Map<String, int> count = {};
    for (var i in input.characters) {
      count[i] = (count[i] ?? 0) + 1;
      if((count[i] ?? 0) >10){
        limitedString = limitedString.replaceFirst(i, "",inputPosition);
      }
    }
    return limitedString;

  }


}


