import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/switch_bloc/switch_bloc.dart';
import '../utils/colors.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.backgroundColor,
      appBar: AppBar(
        title: const Text('Switch'),
        backgroundColor: ColorPicker.appBarColor,
        centerTitle: true,
      ),
      body: BlocBuilder<SwitchBloc, SwitchState>(
        builder: (context, state) {
          bool selectedValue = (state as SwitchChangedState).selectedSwitch;
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Switch(
                    value: selectedValue,
                    onChanged: (value) => context
                        .read<SwitchBloc>()
                        .add(SwitchChangedEvent(value))),
                Text(
                  'Switch: $selectedValue',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: ColorPicker.textColor,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
