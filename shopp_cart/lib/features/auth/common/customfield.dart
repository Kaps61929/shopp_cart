import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  TextEditingController controller;
  String hintext;
  CustomField({super.key, required this.controller, required this.hintext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintext,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
      ),
      validator: (val) {},
    );
  }
}
