// import 'package:flutter/material.dart';
// import 'package:nti_tasks/features/home/data/models/text_model.dart';
//
// class Details extends StatelessWidget {
//   const Details({super.key, required this.productModel});
//   final ProductModel productModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(productModel.name),
//           Image.network(productModel.image),
//           Text(productModel.description),
//           Text(productModel.price.toString()),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nti_tasks/features/home/data/models/text_model.dart';

import '../../../data/list.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.textFormFieldModel,
    required this.index,
  });
  final TextFormFieldModel textFormFieldModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: items[index].keyboardType,
        controller: items[index].textEditingController,
        validator: items[index].validator,
        decoration: InputDecoration(
          suffix: GestureDetector(
            onTap: () => items[index].textEditingController.clear(),
            child: const Icon(
              Icons.highlight_remove_rounded,
              color: Colors.black,
            ),
          ),
          label: Text(items[index].title),
          hintText: items[index].hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
