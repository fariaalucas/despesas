import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String? label;
  final Function()? onPressed;

  const AdaptativeButton({this.label, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label!),
            onPressed: onPressed,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
          )
        : ElevatedButton(
            child: Text(
              label!,
              style: TextStyle(color: Colors.white),
            ),
            onPressed: onPressed,
          );
  }
}
