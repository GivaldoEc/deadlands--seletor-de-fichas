import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_dealer/bloc/character_bloc/character_bloc.dart';
import 'package:the_dealer/bloc/chip_cubit/chip_cubit.dart';
import 'package:the_dealer/presentation/pages/player_management/steps/player_distribution.dart';

class PlayerScreen extends StatelessWidget {
  CharacterBloc bloc(context) => BlocProvider.of<CharacterBloc>(context);
  ChipCubit cubit(context) => BlocProvider.of<ChipCubit>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          if (state is CharactersCreated) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: playerDistribution(context, bloc(context)),
            );
          }
        },
      )),
    );
  }
}
