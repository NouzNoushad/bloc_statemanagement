import 'package:bloc_state_management/data/bloc_widget.dart';
import 'package:bloc_state_management/routes/routes.dart';
import 'package:bloc_state_management/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocWidget(
      child: MaterialApp.router(
        routeInformationParser: Routes.router.routeInformationParser,
        routeInformationProvider: Routes.router.routeInformationProvider,
        routerDelegate: Routes.router.routerDelegate,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorPicker.seedColor),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
