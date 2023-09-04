part of 'switch_bloc.dart';

sealed class SwitchEvent extends Equatable {
  const SwitchEvent();

  @override
  List<Object> get props => [];
}

class SwitchChangedEvent extends SwitchEvent {
  final bool change;
  const SwitchChangedEvent(this.change);

  @override
  List<Object> get props => [change];
}
