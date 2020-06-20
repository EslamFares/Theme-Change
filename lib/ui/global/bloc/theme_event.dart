import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:themes_change_using_bloc/ui/global/theme/app_theme.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  final List props;
  ThemeEvent([this.props = const <dynamic>[]]) : super();
}

class ThemeChange extends ThemeEvent {
  final AppTheme theme;
  ThemeChange({@required this.theme}) : super([theme]);
}
