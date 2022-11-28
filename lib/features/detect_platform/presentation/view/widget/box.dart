
import 'package:flutter/cupertino.dart';

class CustomBox extends StatelessWidget{
const
  CustomBox({super.key, required this.color , this.platformName});
  final Color color;
  final String? platformName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      height: MediaQuery.of(context).size.height/6,
      color: color,
      child: Center(child: Text(platformName ?? "")),
    );
  }

}