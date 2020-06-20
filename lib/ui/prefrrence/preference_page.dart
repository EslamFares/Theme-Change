import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes_change_using_bloc/ui/global/bloc/theme_bloc.dart';
import 'package:themes_change_using_bloc/ui/global/bloc/theme_event.dart';
import 'package:themes_change_using_bloc/ui/global/theme/app_theme.dart';

class Preferencepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chose Theme'),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: AppTheme.values.length,
          itemBuilder: (context, index) {
            final itemAppTheme = AppTheme.values[index];
            return Card(
              color: appThemeData[itemAppTheme].primaryColor,
              child: ListTile(
                // ignore: deprecated_member_use
                title: Text(
                  itemAppTheme.toString(),
                  // ignore: deprecated_member_use
                  style: appThemeData[itemAppTheme].textTheme.body1,
                ),
                onTap: (){
                  BlocProvider.of<ThemeBloc>(context).add(ThemeChange(theme: itemAppTheme));
                },
              ),
            );
          }),
    );
  }

}
