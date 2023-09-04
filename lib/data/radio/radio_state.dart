part of 'radio_bloc.dart';

sealed class RadioState extends Equatable {
  const RadioState();

  @override
  List<Object> get props => [];
}

final class RadioChangedState extends RadioState {
  final Who selectedWho;
  const RadioChangedState(this.selectedWho);

  @override
  List<Object> get props => [selectedWho];
}
