import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes_change_using_bloc/ui/global/bloc/theme_bloc.dart';
import 'package:themes_change_using_bloc/ui/global/bloc/theme_stats.dart';
import 'package:themes_change_using_bloc/ui/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ThemeBloc(),
        child: BlocBuilder<ThemeBloc, ThemeState>(builder: _buildWithTheme));
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      title: 'Change Theme',
      debugShowCheckedModeBanner: false,
      theme:state.themeData,
      home: HomePage(),
    );
  }
}