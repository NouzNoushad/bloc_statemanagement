import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../utils/constants.dart';

part 'radio_event.dart';
part 'radio_state.dart';

class RadioBloc extends Bloc<RadioEvent, RadioState> {
  RadioBloc() : super(const RadioChangedState(Who.human)) {
    on<RadioChangedEvent>(changeWho);
  }

  FutureOr<void> changeWho(RadioChangedEvent event, Emitter<RadioState> emit) {
    Who selectedWho = event.changeWho;
    emit(RadioChangedState(selectedWho));
  }
}
