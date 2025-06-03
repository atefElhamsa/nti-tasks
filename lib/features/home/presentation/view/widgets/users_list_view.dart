import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../data/models/text_model.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          title: CustomText(
            textModel: TextModel(title: "${AppTexts.user} ${index + 1}"),
          ),
          subtitle: CustomText(
            textModel: TextModel(
              title: "${AppTexts.message} ${index + 1}",
              fontSize: AppSize.s20,
              color: AppColors.grey,
            ),
          ),
          trailing: const CustomText(
            textModel: TextModel(
              title: AppTexts.time,
              fontSize: AppSize.s20,
              color: AppColors.grey,
            ),
          ),
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s",
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: AppSize.s10);
      },
      itemCount: 20,
    );
  }
}
