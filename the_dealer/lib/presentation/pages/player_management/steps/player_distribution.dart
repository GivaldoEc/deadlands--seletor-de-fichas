import 'package:flutter/material.dart';
import 'package:the_dealer/bloc/character_bloc/character_bloc.dart';
import 'package:the_dealer/presentation/pages/chip_sequence/widgets/box_standard_decoration.dart';
import 'package:the_dealer/presentation/pages/chip_sequence/widgets/standard_text_form.dart';
// import 'package:sizer/sizer.dart';

List<Widget> playerDistribution(context, CharacterBloc bloc) {
  final TextEditingController controller = TextEditingController();
  final double sz = 24;
  return [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 150),
      child: Container(
        decoration: standardBox(),
        child: TextFormField(
          controller: controller,
          decoration: standardFormDecoration("Número"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: ElevatedButton(
        onPressed: () {
          bloc.add(CreateCharacters(int.parse(controller.text)));
        },
        child: Text("Próximo"),
      ),
    ),
  ];
}
