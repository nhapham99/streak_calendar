import 'package:clean_calendar/src/models/month_year_decoration.dart';
import 'package:clean_calendar/src/models/navigator_decoration.dart';
import 'package:flutter/widgets.dart';

class HeaderProperties {
  /// - monthYearDecoration, changes the decoration of all months and years decoration in the header area of calendar.
  final MonthYearDecoration? monthYearDecoration;

  /// - navigatorDecoration, changes the decoration of navigator.
  final NavigatorDecoration? navigatorDecoration;

  final Function(
    BuildContext context,
    DateTime date,
    VoidCallback onNextMonth,
    VoidCallback onPreviousMonth,
  )? builder;

  HeaderProperties({
    this.monthYearDecoration,
    this.navigatorDecoration,
    this.builder,
  });

  Map<String, dynamic> toMap() {
    return {
      'monthYearDecoration': monthYearDecoration,
      'navigatorDecoration': navigatorDecoration,
      'builder': builder,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeaderProperties &&
          runtimeType == other.runtimeType &&
          monthYearDecoration == other.monthYearDecoration &&
          navigatorDecoration == other.navigatorDecoration &&
          builder == other.builder;

  @override
  int get hashCode =>
      monthYearDecoration.hashCode ^ navigatorDecoration.hashCode ^ builder.hashCode;

  // Implement toString to make it easier to see information
  // when using the print statement.
  @override
  String toString() {
    return 'HeaderProperties{monthYearDecoration: $monthYearDecoration, navigatorDecoration: $navigatorDecoration, builder: $builder}';
  }
}
