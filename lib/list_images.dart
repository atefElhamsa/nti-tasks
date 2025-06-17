import 'package:flutter/material.dart';
import 'package:nti_tasks/image_widget.dart';

import 'cubit/count_cubit.dart';

class ListImages extends StatelessWidget {
  ListImages({super.key, required this.cubit});
  final CountCubit cubit;
  final List<String> images = [
    "assets/image_1.png",
    "assets/image_2.png",
    "assets/back3.png",
    "assets/image_4.png",
  ];
  final List<Color> colors = [
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => ImageWidget(
              image: images[index],
              cubit: cubit,
              color: colors[index],
            ),
        separatorBuilder: (context, index) => const SizedBox(width: 30),
        itemCount: images.length,
      ),
    );
  }
}
