part of 'checkbox_bloc.dart';

sealed class CheckboxState extends Equatable {
  const CheckboxState();

  @override
  List<Object> get props => [];
}

final class CheckboxChangedState extends CheckboxState {
  final bool selected;
  const CheckboxChangedState(this.selected);

  @override
  List<Object> get props => [selected];
}
