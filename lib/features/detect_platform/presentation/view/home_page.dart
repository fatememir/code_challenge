import 'package:code_challenge/core/utils/detect_platforms.dart';
import 'package:code_challenge/core/utils/string_limiter.dart';
import 'package:code_challenge/features/detect_platform/presentation/view/widget/custom_box.dart';
import 'package:code_challenge/features/detect_platform/presentation/view/widget/custom_textfield.dart';
import 'package:code_challenge/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  String? platformName;

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomBox(
                  color:
                      locator<DetectPlatform>().colorBasedOnCurrentPlatform(),
                  platformName: platformName),
              const SizedBox(
                height: 32,
              ),
              GestureDetector(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                  child:
                      const Center(child: Text("press to see your platform")),
                ),
                onTap: () {
                  setState(() {
                    platformName =
                        (locator<DetectPlatform>().currentPlatform.name);
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: CustomTextField(
                      textController: textController,
                      callback: (textValue) {
                        textValue = locator<StringLimiter>().limitedString(
                            textValue, textController.selection.baseOffset - 1);
                        if (textValue != textController.text) {
                          textController.text = textValue;
                          textController.selection = TextSelection.collapsed(
                              offset: textController.text.length);
                        }
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
