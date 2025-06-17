import 'package:flutter/material.dart';

import 'cubit/count_cubit.dart';

class AddZeroWidget extends StatelessWidget {
  const AddZeroWidget({super.key, required this.cubit});
  final CountCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black87,
          child: Text(
            cubit.num.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              child: IconButton(
                onPressed: () {
                  cubit.reClearNum();
                },
                icon: const Icon(
                  Icons.replay_circle_filled_rounded,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              child: IconButton(
                onPressed: () {
                  cubit.increment();
                },
                icon: const Icon(
                  Icons.add_circle,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
