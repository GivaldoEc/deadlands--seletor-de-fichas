part of 'character_bloc.dart';

@immutable
abstract class CharacterState {}

class CharacterInitial extends CharacterState {}

class CharactersCreated extends CharacterState{
  final List<Character> characters;

  CharactersCreated({required this.characters});
}