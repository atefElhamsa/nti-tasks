// // import 'package:flutter/material.dart';
// // import 'package:nti_tasks/core/utils/app_size.dart';
// // import 'package:nti_tasks/core/utils/app_texts.dart';
// //
// // class TextModel {
// //   final String title;
// //   final Color? color;
// //   final FontWeight? fontWeight;
// //   final double? fontSize;
// //   final TextAlign? textAlign;
// //
// //   const TextModel({
// //     required this.title,
// //     this.color,
// //     this.fontWeight,
// //     this.fontSize,
// //     this.textAlign,
// //   });
// // }
// //
// // final List<TextModel> popTexts = [
// //   const TextModel(
// //     title: AppTexts.newGroup,
// //     fontSize: AppSize.s20,
// //     fontWeight: FontWeight.w300,
// //   ),
// //   const TextModel(
// //     title: AppTexts.newCommunity,
// //     fontSize: AppSize.s20,
// //     fontWeight: FontWeight.w300,
// //   ),
// //   const TextModel(
// //     title: AppTexts.newBroadcast,
// //     fontSize: AppSize.s20,
// //     fontWeight: FontWeight.w300,
// //   ),
// //   const TextModel(
// //     title: AppTexts.linkedDevices,
// //     fontSize: AppSize.s20,
// //     fontWeight: FontWeight.w300,
// //   ),
// //   const TextModel(
// //     title: AppTexts.starred,
// //     fontSize: AppSize.s20,
// //     fontWeight: FontWeight.w300,
// //   ),
// //   const TextModel(
// //     title: AppTexts.readAll,
// //     fontSize: AppSize.s20,
// //     fontWeight: FontWeight.w300,
// //   ),
// //   const TextModel(
// //     title: AppTexts.settings,
// //     fontSize: AppSize.s20,
// //     fontWeight: FontWeight.w300,
// //   ),
// //   const TextModel(
// //     title: AppTexts.switchAccounts,
// //     fontSize: AppSize.s20,
// //     fontWeight: FontWeight.w300,
// //   ),
// // ];
//
// class ProductModel {
//   final String id;
//   final String name;
//   final String image;
//   final String description;
//   final double price;
//
//   ProductModel({
//     required this.id,
//     required this.name,
//     required this.image,
//     required this.description,
//     required this.price,
//   });
// }
// List<ProductModel> productList = [
//   ProductModel(
//     id: "1",
//     name: 'Smartphone',
//     image: 'https://www.york.ac.uk/media/study/courses/undergraduate/electronics/Yellow-circuit-EE-crop1200.jpg',
//     description: 'A powerful smartphone with 128GB storage and great camera.',
//     price: 699.99,
//   ),
//   ProductModel(
//     id: "2",
//     name: 'Laptop',
//     image: 'https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg',
//     description: 'A fast laptop suitable for work and gaming.',
//     price: 1199.99,
//   ),
//   ProductModel(
//     id: "3",
//     name: 'Headphones',
//     image: 'https://img.freepik.com/free-photo/checking-current-laptop-circuit-board_1098-13759.jpg?semt=ais_hybrid&w=740',
//     description: 'Noise-cancelling wireless headphones.',
//     price: 199.99,
//   ),
//   ProductModel(
//     id: "4",
//     name: 'Smartwatch',
//     image: 'https://www.arkema.com/files/live/sites/shared_arkema/files/images/markets/Electronics%20electrical/electronics.jpg',
//     description: 'Stylish smartwatch with health tracking features.',
//     price: 249.99,
//   ),
// ];
import 'package:flutter/material.dart';
import 'package:nti_tasks/core/utils/my_validators.dart';

class TextFormFieldModel {
  final TextEditingController textEditingController;
  final String title;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? index;

  const TextFormFieldModel({
    required this.textEditingController,
    required this.title,
    required this.hintText,
    required this.validator,
    required this.keyboardType,
    this.index,
  });
}