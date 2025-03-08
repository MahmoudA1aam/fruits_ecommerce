import 'package:flutter/material.dart';

customBuildErrorBar({required massege, required context}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          const Icon(Icons.error_outline_sharp),
          const SizedBox(width: 10),
          Text(massege),
        ],
      ),
    ),
  );
}
