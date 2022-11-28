
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{

  const CustomTextField({super.key, required this.textController , required this.callback});
  final TextEditingController textController;
  final Function(String) callback;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          hintText: 'input your text'),
      controller: textController,
      onChanged: (textValue) {
        callback(textValue);

      },

    );
  }

}