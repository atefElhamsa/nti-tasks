import 'package:flutter/material.dart';

import 'cubit/count_cubit.dart';

class PopWidget extends StatelessWidget {
  const PopWidget({super.key, required this.cubit});
  final CountCubit cubit;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      position: PopupMenuPosition.under,
      icon: const Icon(Icons.menu, color: Colors.white, size: 25),
      onSelected: (value) {},
      itemBuilder:
          (context) => [
            PopupMenuItem(
              value: "Option 1",
              child: const Text("سبحان الله"),
              onTap: () {
                cubit.changeText(text: "سبحان الله");
              },
            ),
            PopupMenuItem(
              value: "Option 2",
              child: const Text("الحمد لله"),
              onTap: () {
                cubit.changeText(text: "الحمد لله");
              },
            ),
            PopupMenuItem(
              value: "Option 3",
              child: const Text("الله أكبر"),
              onTap: () {
                cubit.changeText(text: "الله أكبر");
              },
            ),
            PopupMenuItem(
              value: "Option 4",
              child: const Text("لا اله الا الله"),
              onTap: () {
                cubit.changeText(text: "لا اله الا الله");
              },
            ),
          ],
    );
  }
}
