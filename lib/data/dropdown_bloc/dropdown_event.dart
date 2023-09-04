part of 'dropdown_bloc.dart';

sealed class DropdownEvent extends Equatable {
  const DropdownEvent();

  @override
  List<Object> get props => [];
}

class DropdownChangedEvent extends DropdownEvent {
  final String selectedCountry;
  const DropdownChangedEvent(this.selectedCountry);

  @override
  List<Object> get props => [selectedCountry];
}
