import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'checkbox_event.dart';
part 'checkbox_state.dart';

class CheckboxBloc extends Bloc<CheckboxEvent, CheckboxState> {
  CheckboxBloc() : super(const CheckboxChangedState(false)) {
    on<CheckboxChangedEvent>(changeValue);
  }

  FutureOr<void> changeValue(
      CheckboxChangedEvent event, Emitter<CheckboxState> emit) {
    bool selected = event.changedValue;
    emit(CheckboxChangedState(selected));
  }
}
