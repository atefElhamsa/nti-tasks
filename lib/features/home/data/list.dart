import 'package:flutter/material.dart';

import '../../../core/utils/my_validators.dart';
import 'models/text_model.dart';

TextEditingController nameController = TextEditingController();
TextEditingController nationalId = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController tokenController = TextEditingController();
List<TextFormFieldModel> items = [
  TextFormFieldModel(
    textEditingController: nameController,
    title: "Name",
    hintText: "Enter Name",
    validator: (p0) => MyValidators.displayNameValidator(p0),
    keyboardType: TextInputType.text,
  ),
  TextFormFieldModel(
    textEditingController: nationalId,
    title: "National ID",
    hintText: "Enter National ID",
    validator: (p0) => MyValidators.nationalIdValidator(p0),
    keyboardType: TextInputType.number,
  ),
  TextFormFieldModel(
    textEditingController: phoneController,
    title: "Phone",
    hintText: "Enter Phone",
    validator: (p0) => MyValidators.phoneValidator(p0),
    keyboardType: TextInputType.phone,
  ),
  TextFormFieldModel(
    textEditingController: emailController,
    title: "Email",
    hintText: "Enter Email",
    validator: (p0) => MyValidators.emailValidator(p0),
    keyboardType: TextInputType.emailAddress,
  ),
  TextFormFieldModel(
    textEditingController: passwordController,
    title: "Password",
    hintText: "Enter Password",
    validator: (p0) => MyValidators.passwordValidator(p0),
    keyboardType: TextInputType.visiblePassword,
  ),
  TextFormFieldModel(
    textEditingController: tokenController,
    title: "Token",
    hintText: "Enter Token",
    validator: (p0) => MyValidators.tokenValidator(p0),
    keyboardType: TextInputType.text,
  ),
];
