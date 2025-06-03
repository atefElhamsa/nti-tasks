import 'package:flutter/material.dart';
import 'package:nti_tasks/core/utils/app_size.dart';
import 'package:nti_tasks/core/utils/app_texts.dart';

class TextModel {
  final String title;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;

  const TextModel({
    required this.title,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
  });
}

final List<TextModel> popTexts = [
  const TextModel(
    title: AppTexts.newGroup,
    fontSize: AppSize.s20,
    fontWeight: FontWeight.w300,
  ),
  const TextModel(
    title: AppTexts.newCommunity,
    fontSize: AppSize.s20,
    fontWeight: FontWeight.w300,
  ),
  const TextModel(
    title: AppTexts.newBroadcast,
    fontSize: AppSize.s20,
    fontWeight: FontWeight.w300,
  ),
  const TextModel(
    title: AppTexts.linkedDevices,
    fontSize: AppSize.s20,
    fontWeight: FontWeight.w300,
  ),
  const TextModel(
    title: AppTexts.starred,
    fontSize: AppSize.s20,
    fontWeight: FontWeight.w300,
  ),
  const TextModel(
    title: AppTexts.readAll,
    fontSize: AppSize.s20,
    fontWeight: FontWeight.w300,
  ),
  const TextModel(
    title: AppTexts.settings,
    fontSize: AppSize.s20,
    fontWeight: FontWeight.w300,
  ),
  const TextModel(
    title: AppTexts.switchAccounts,
    fontSize: AppSize.s20,
    fontWeight: FontWeight.w300,
  ),
];
