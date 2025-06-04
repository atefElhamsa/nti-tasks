// import 'package:flutter/material.dart';
// import 'package:nti_tasks/core/utils/app_texts.dart';
// import '../../../../../core/utils/app_colors.dart';
//
// class BottomNavigationBarWidget extends StatefulWidget {
//   const BottomNavigationBarWidget({super.key});
//
//   @override
//   State<BottomNavigationBarWidget> createState() =>
//       _BottomNavigationBarWidgetState();
// }
//
// class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       unselectedItemColor: AppColors.grey,
//       selectedItemColor: AppColors.black,
//       currentIndex: currentIndex,
//       onTap: (value) {
//         setState(() {
//           currentIndex = value;
//         });
//       },
//       items: [
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.chat),
//           label: AppTexts.chats,
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.slow_motion_video_rounded),
//           label: AppTexts.updates,
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.groups_rounded),
//           label: AppTexts.communities,
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.phone),
//           label: AppTexts.calls,
//         ),
//       ],
//     );
//   }
// }
