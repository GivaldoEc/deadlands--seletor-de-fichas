import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_dealer/presentation/tools/const/colors.dart';

Widget buttomContainer(context, cubit, function, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 0,
    ),
    child: GestureDetector(
      onTap: function,
      child: Container(
        height: 7.h,
        width: 60.w,
        decoration: BoxDecoration(
          color: Color(E_BROWN),
          border: Border.all(
            color: Color(E_BROWN),
            width: 2.w,
          ),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Color(B_BROWN)),
        )),
      ),
    ),
  );
}
