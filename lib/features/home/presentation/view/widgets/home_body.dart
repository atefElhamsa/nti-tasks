import 'package:flutter/material.dart';
import 'package:nti_tasks/features/home/presentation/view/widgets/details.dart';

import '../../../data/list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Item(textFormFieldModel: items[index], index: index);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemCount: items.length,
        ),
        MaterialButton(
          onPressed: () {},
          child: const Text("Login", style: TextStyle(color: Colors.white)),
          color: Colors.black,
        ),
      ],
    );
  }
}
