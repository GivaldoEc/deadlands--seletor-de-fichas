part of 'chip_cubit.dart';

@immutable
abstract class ChipState {}

class ChipInitial extends ChipState {}

class ChipSetPot extends ChipState {}

class ChipNumberOfPlayers extends ChipState {

final int white, red, blue, yellow;

ChipNumberOfPlayers(this.white, this.red, this.blue, this.yellow);  

}
