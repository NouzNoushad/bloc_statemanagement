import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchChangedState(false)) {
    on<SwitchChangedEvent>(changeSwitch);
  }

  FutureOr<void> changeSwitch(
      SwitchChangedEvent event, Emitter<SwitchState> emit) {
    bool selectedSwitch = event.change;
    emit(SwitchChangedState(selectedSwitch));
  }
}
