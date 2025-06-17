import 'package:flutter/material.dart';

import 'cubit/count_cubit.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
    required this.cubit,
    required this.color,
  });
  final String image;
  final CountCubit cubit;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        cubit.changeImage(image: image);
        cubit.changeColor(color: color);
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Image.asset(image, height: 100, width: 100, fit: BoxFit.cover),
      ),
    );
  }
}
