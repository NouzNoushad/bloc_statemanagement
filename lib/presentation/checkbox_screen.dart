import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/checkbox/checkbox_bloc.dart';
import '../utils/colors.dart';

class CheckboxScreen extends StatelessWidget {
  const CheckboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPicker.backgroundColor,
        appBar: AppBar(
          title: const Text('Checkbox'),
          backgroundColor: ColorPicker.appBarColor,
          centerTitle: true,
        ),
        body: BlocBuilder<CheckboxBloc, CheckboxState>(
          builder: (context, state) {
            bool selectedValue = (state as CheckboxChangedState).selected;
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                    activeColor: ColorPicker.primaryColor,
                    value: selectedValue,
                    onChanged: (value) {
                      context
                          .read<CheckboxBloc>()
                          .add(CheckboxChangedEvent(value!));
                    },
                  ),
                  Text(
                    selectedValue ? 'Checked' : 'Unchecked',
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
        ));
  }
}
