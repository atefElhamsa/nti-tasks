import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/text_model.dart';

class PopList extends StatelessWidget {
  const PopList({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      position: PopupMenuPosition.under,
      iconColor: AppColors.black,
      itemBuilder: (context) {
        return List.generate(popTexts.length, (index) {
          return PopupMenuItem(
            enabled: true,
            child: CustomText(textModel: popTexts[index]),
          );
        });
      },
    );
  }
}
