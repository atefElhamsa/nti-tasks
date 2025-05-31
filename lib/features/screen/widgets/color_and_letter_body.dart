import 'package:flutter/material.dart';

import 'grid_view_contanier_widget.dart';

class ColorAndLetterBody extends StatelessWidget {
  const ColorAndLetterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridViewContanierWidget(),
    );
  }
}
