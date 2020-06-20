import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:themes_change_using_bloc/ui/global/theme/app_theme.dart';
import 'theme_event.dart';
import 'theme_stats.dart';
class ThemeBloc extends Bloc<ThemeEvent,ThemeState>{
  @override
  // TODO: implement initialState
  ThemeState get initialState => ThemeState(themeData: appThemeData[AppTheme.GreenLight]);

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event)async* {
   if(event is ThemeChange){
     yield ThemeState(themeData: appThemeData[event.theme]);
   }
  }

}