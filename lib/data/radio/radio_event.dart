part of 'radio_bloc.dart';

sealed class RadioEvent extends Equatable {
  const RadioEvent();

  @override
  List<Object> get props => [];
}

class RadioChangedEvent extends RadioEvent {
  final Who changeWho;
  const RadioChangedEvent(this.changeWho);

  @override
  List<Object> get props => [changeWho];
}
