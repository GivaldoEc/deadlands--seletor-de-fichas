part of 'character_bloc.dart';

@immutable
abstract class CharacterEvent extends Equatable {}

class CreateCharacters extends CharacterEvent {
  final int numberOfCharacters;
  CreateCharacters(this.numberOfCharacters);

  @override
  List<Object?> get props => [numberOfCharacters];
}
