part of 'dropdown_bloc.dart';

sealed class DropdownState extends Equatable {
  const DropdownState();

  @override
  List<Object> get props => [];
}

final class DropdownInitial extends DropdownState {}

class DropdownChangedState extends DropdownState {
  final String country;
  const DropdownChangedState(this.country);

  @override
  List<Object> get props => [country];
}
