import 'package:flutter/material.dart';

commonAppbar({required String title}) {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.only(
        left: 24,
      ),
      child: Text(
        title,
      ),
    ),
  );
}
