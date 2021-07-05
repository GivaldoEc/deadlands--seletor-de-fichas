import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_dealer/bloc/chip_cubit/chip_cubit.dart';
import 'package:the_dealer/presentation/pages/chip_sequence/steps/chip_presentation.dart';
import 'package:the_dealer/presentation/pages/chip_sequence/steps/chip_set_pot.dart';

ChipCubit chipCubit(context) {
  return BlocProvider.of<ChipCubit>(context);
}

class ChipSequenceInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: BlocBuilder<ChipCubit, ChipState>(
        builder: (context, state) {
          if (state is ChipSetPot) {
            return Column(
              children: chipSetPot(context, chipCubit(context)),
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            );
          } else if (state is ChipNumberOfPlayers) {
            return Column(
              children: chipSetPot(context, chipCubit(context)),
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            );
          } else {
            return Column(
              children: presentation(context, chipCubit(context)),
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            );
          }
        },
      )),
    );
  }
}

class ChipFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
