import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    Key? key,
    required this.hint,
    this.onChanged,
  }) : super(key: key);

  final String? hint;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        onChanged: onChanged,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$hint is empty!';
          }
          return null; // Return null if the value is valid
        },
        cursorColor: kmc,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: kmc,
            fontWeight: FontWeight.bold,
          ),
          fillColor: kwc,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kmc),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kmc),
            borderRadius: BorderRadius.circular(33),
          ),
          // border: OutlineInputBorder(
          //   borderSide: const BorderSide(color: KWC),
          //   borderRadius: BorderRadius.circular(20),
          // ),
        ),
      ),
    );
  }
}
