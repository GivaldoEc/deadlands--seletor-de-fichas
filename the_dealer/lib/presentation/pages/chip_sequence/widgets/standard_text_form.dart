import 'package:flutter/material.dart';
import 'package:the_dealer/presentation/tools/const/colors.dart';

InputDecoration standardFormDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(B_BROWN))),
  );
}
