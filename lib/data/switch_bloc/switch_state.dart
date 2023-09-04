part of 'switch_bloc.dart';

sealed class SwitchState extends Equatable {
  const SwitchState();

  @override
  List<Object> get props => [];
}

final class SwitchChangedState extends SwitchState {
  final bool selectedSwitch;
  const SwitchChangedState(this.selectedSwitch);

  @override
  List<Object> get props => [selectedSwitch];
}
