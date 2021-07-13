import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chip_state.dart';

class ChipCubit extends Cubit<ChipState> {
  int white = 0, red = 0, blue = 0, yellow = 0;

  ChipCubit() : super(ChipInitial());

  void addWhite(int x) {
    white += x;
  }

  void addRed(int x) {
    red += x;
  }

  void addBlue(int x) {
    blue += x;
  }

  void addYellow(int x) {
    yellow += x;
  }

  //subtracting functions

  void subWhite(int x) {
    white -= x;
  }

  void subRed(int x) {
    red -= x;
  }

  void subBlue(int x) {
    blue -= x;
  }

  void subYellow(int x) {
    yellow -= x;
  }
}
