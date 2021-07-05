import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_dealer/bloc/chip_cubit/chip_cubit.dart';
import 'package:the_dealer/presentation/pages/chip_sequence/widgets/buttom_container.dart';
import 'package:the_dealer/presentation/tools/const/colors.dart';
import 'package:the_dealer/presentation/tools/const/presentation_text.dart';

List<Widget> presentation(context, ChipCubit cubit) {
  return [
    Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(PRESENTATION_TEXT),
      ),
      width: 70.w,
      height: 70.h,
      decoration: BoxDecoration(
        color: Color(C_BROWN),
        border: Border.all(
          width: 2.w,
          color: Color(E_BROWN),
        ),
      ),
    ),
    buttomContainer(
      context,
      cubit,
      () {
        cubit.emit(ChipSetPot());
      },
      "Tentar o destino",
    ),
  ];
}
