import 'package:flutter/material.dart';
import 'package:nti_tasks/features/data/models/container_model.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.containerModel});
  final ContainerModel containerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: containerModel.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          containerModel.char,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
