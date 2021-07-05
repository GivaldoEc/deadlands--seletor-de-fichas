import 'package:flutter/material.dart';
import 'package:the_dealer/bloc/chip_cubit/chip_cubit.dart';
import 'package:the_dealer/presentation/pages/chip_sequence/widgets/box_standard_decoration.dart';
import 'package:the_dealer/presentation/pages/chip_sequence/widgets/buttom_container.dart';
import 'package:the_dealer/presentation/pages/chip_sequence/widgets/standard_text_form.dart';

List<Widget> chipSetPot(context, cubit) {
  final TextEditingController white = TextEditingController(),
      red = TextEditingController(),
      blue = TextEditingController(),
      yellow = TextEditingController();

  return [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        decoration: standardBox(),
        child: TextFormField(
          keyboardType: TextInputType.number,
          controller: white,
          decoration: standardFormDecoration("Fichas Brancas"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        decoration: standardBox(),
        child: TextFormField(
          keyboardType: TextInputType.number,
          controller: red,
          decoration: standardFormDecoration("Fichas Brancas"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        decoration: standardBox(),
        child: TextFormField(
          keyboardType: TextInputType.number,
          controller: blue,
          decoration: standardFormDecoration("Fichas Brancas"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 40),
      child: Container(
        decoration: standardBox(),
        child: TextFormField(
          keyboardType: TextInputType.number,
          controller: yellow,
          decoration: standardFormDecoration("Fichas Brancas"),
        ),
      ),
    ),
    buttomContainer(
      context,
      cubit,
      () {
        int w, r, b, y;

        if (white.text == "") {
          w = 0;
        } else {
          w = int.parse(white.text);
        }
        if (red.text == "") {
          r = 0;
        } else {
          r = int.parse(red.text);
        }
        if (blue.text == "") {
          b = 0;
        } else {
          b = int.parse(blue.text);
        }
        if (yellow.text == "") {
          y = 0;
        } else {
          y = int.parse(yellow.text);
        }

        cubit.emit(ChipNumberOfPlayers(w, r, b, y));
      },
      "Próximo",
    )
  ];
}
