import 'package:bloc_state_management/data/checkbox/checkbox_bloc.dart';
import 'package:bloc_state_management/data/radio/radio_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dropdown_bloc/dropdown_bloc.dart';
import 'switch_bloc/switch_bloc.dart';

class BlocWidget extends StatelessWidget {
  final Widget child;
  const BlocWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DropdownBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => CheckboxBloc(),
        ),
        BlocProvider(
          create: (context) => RadioBloc(),
        ),
      ],
      child: child,
    );
  }
}
