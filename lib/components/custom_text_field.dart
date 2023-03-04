import 'package:flutter/material.dart';

Widget CustomTextFiled({
  required TextEditingController? TextEditingController,
  required String? label,
}) {
  return SizedBox(
    width: 50,
    height: 100,
    child: TextField(
      keyboardType: TextInputType.number,
      controller: TextEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: label,
        label: Text(label!),
      ),
    ),
  );
}
