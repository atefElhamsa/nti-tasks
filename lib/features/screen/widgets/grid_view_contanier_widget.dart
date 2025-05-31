import 'package:flutter/material.dart';

import '../../../core/utils/list_chars.dart';
import '../../../core/utils/list_colors.dart';
import '../../data/models/container_model.dart';
import 'container_widget.dart';

class GridViewContanierWidget extends StatelessWidget {
  const GridViewContanierWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return ContainerWidget(
          containerModel: ContainerModel(
            color: listColors[index],
            char: items[index],
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
