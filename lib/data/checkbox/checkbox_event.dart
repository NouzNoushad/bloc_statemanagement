part of 'checkbox_bloc.dart';

sealed class CheckboxEvent extends Equatable {
  const CheckboxEvent();

  @override
  List<Object> get props => [];
}

class CheckboxChangedEvent extends CheckboxEvent {
  final bool changedValue;
  const CheckboxChangedEvent(this.changedValue);

  @override
  List<Object> get props => [changedValue];
}
