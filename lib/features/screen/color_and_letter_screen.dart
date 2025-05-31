import 'package:flutter/material.dart';
import 'package:nti_tasks/features/screen/widgets/color_and_letter_body.dart';

class ColorAndLetterScreen extends StatelessWidget {
  const ColorAndLetterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorAndLetterBody(),
    );
  }
}
