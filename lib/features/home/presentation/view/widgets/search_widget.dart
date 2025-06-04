// import 'package:flutter/material.dart';
//
// import '../../../../../core/shared_widgets/custom_text.dart';
// import '../../../../../core/utils/app_colors.dart';
// import '../../../../../core/utils/app_size.dart';
// import '../../../../../core/utils/app_texts.dart';
// import '../../../data/models/text_model.dart';
//
// class SearchWidget extends StatelessWidget {
//   const SearchWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: AppSize.s30),
//       width: double.infinity,
//       height: AppSize.s50,
//       decoration: BoxDecoration(
//         color: AppColors.grey,
//         borderRadius: BorderRadius.circular(50),
//       ),
//       child: const Row(
//         children: [
//           Icon(Icons.search, color: AppColors.white, size: AppSize.s20),
//           CustomText(
//             textModel: TextModel(
//               title: AppTexts.search,
//               color: AppColors.white,
//               fontSize: AppSize.s20,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
