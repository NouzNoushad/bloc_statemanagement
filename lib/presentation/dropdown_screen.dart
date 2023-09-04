import 'package:bloc_state_management/utils/colors.dart';
import 'package:bloc_state_management/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/dropdown_bloc/dropdown_bloc.dart';

class DropdownScreen extends StatelessWidget {
  const DropdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.backgroundColor,
      appBar: AppBar(
        title: const Text('Dropdown'),
        backgroundColor: ColorPicker.appBarColor,
        centerTitle: true,
      ),
      body: BlocBuilder<DropdownBloc, DropdownState>(
        builder: (context, state) {
          return Center(
            child: DropdownButton(
                dropdownColor: ColorPicker.dropdownColor,
                hint: const Text('Editions'),
                underline: Container(),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: ColorPicker.primaryColor,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                value: (state as DropdownChangedState).country,
                borderRadius: BorderRadius.circular(20),
                items: countries
                    .map((edition) => DropdownMenuItem(
                        value: edition,
                        child: Center(
                          child: Text(
                            edition[0].toUpperCase() +
                                edition.substring(1).toLowerCase(),
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: ColorPicker.textColor),
                          ),
                        )))
                    .toList(),
                onChanged: (country) {
                  context
                      .read<DropdownBloc>()
                      .add(DropdownChangedEvent(country!));
                }),
          );
        },
      ),
    );
  }
}
