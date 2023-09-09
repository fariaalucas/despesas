import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final TextInputType keyBoardType;
  final Function(String)? onSubmitted;

  const AdaptativeTextField(
      {this.controller,
      this.keyBoardType = TextInputType.text,
      this.onSubmitted,
      this.label,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
                controller: controller,
                keyboardType: keyBoardType,
                onSubmitted: onSubmitted,
                placeholder: label,
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 12,
                )),
          )
        : TextField(
            keyboardType: keyBoardType,
            onSubmitted: onSubmitted,
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
            ),
          );
  }
}
