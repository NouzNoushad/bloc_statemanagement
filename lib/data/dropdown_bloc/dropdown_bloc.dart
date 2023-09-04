import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/utils/constants.dart';
import 'package:equatable/equatable.dart';

part 'dropdown_event.dart';
part 'dropdown_state.dart';

class DropdownBloc extends Bloc<DropdownEvent, DropdownState> {
  DropdownBloc() : super(DropdownChangedState(countries.first)) {
    on<DropdownChangedEvent>(changeCountry);
  }

  FutureOr<void> changeCountry(
      DropdownChangedEvent event, Emitter<DropdownState> emit) {
    String country = event.selectedCountry;
    emit(DropdownChangedState(country));
  }
}
