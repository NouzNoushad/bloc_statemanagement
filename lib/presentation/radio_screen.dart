import 'package:bloc_state_management/data/radio/radio_bloc.dart';
import 'package:bloc_state_management/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/colors.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPicker.backgroundColor,
        appBar: AppBar(
          title: const Text('Radio'),
          backgroundColor: ColorPicker.appBarColor,
          centerTitle: true,
        ),
        body: BlocBuilder<RadioBloc, RadioState>(
          builder: (context, state) {
            Who selectedWho = (state as RadioChangedState).selectedWho;
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Who the hell are you?',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: ColorPicker.textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: Who.human,
                          groupValue: selectedWho,
                          onChanged: (value) => context
                              .read<RadioBloc>()
                              .add(RadioChangedEvent(value!))),
                      Text(
                        'Human',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ColorPicker.textColor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: Who.animal,
                          groupValue: selectedWho,
                          onChanged: (value) => context
                              .read<RadioBloc>()
                              .add(RadioChangedEvent(value!))),
                      Text(
                        'Animal',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ColorPicker.textColor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: Who.monster,
                          groupValue: selectedWho,
                          onChanged: (value) => context
                              .read<RadioBloc>()
                              .add(RadioChangedEvent(value!))),
                      Text(
                        'Monster',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ColorPicker.textColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}
