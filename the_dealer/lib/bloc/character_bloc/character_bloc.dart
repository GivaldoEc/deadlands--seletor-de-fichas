import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:the_dealer/data/models/character.dart';
part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc() : super(CharacterInitial());

  List<Character> list = [];

  @override
  Stream<CharacterState> mapEventToState(
    CharacterEvent event,
  ) async* {
    if (event is CreateCharacters) {
      listGenerator(event.numberOfCharacters);
      emit(CharactersCreated(characters: list));
    }
  }

  void listGenerator(int number) {
    
    for (int i = 0; i < number; i++) {
      Character character = Character();
  //TODO: implement an actual multicharacter creation.
      list.add(character);
    }
  }
}
