import 'package:clean_calendar/src/models/weekdays_decoration.dart';
import 'package:flutter/widgets.dart';

class WeekdaysProperties {
  /// - generalWeekdaysDecoration, changes the decoration of all weekdays except for which user has provided specific weekday decoration.
  final WeekdaysDecoration? generalWeekdaysDecoration;

  /// - mondayDecoration, changes the decoration of only monday weekday.
  final WeekdaysDecoration? mondayDecoration;

  /// - tuesdayDecoration, changes the decoration of only tuesday weekday.
  final WeekdaysDecoration? tuesdayDecoration;

  /// - wednesdayDecoration, changes the decoration of only wednesday weekday.
  final WeekdaysDecoration? wednesdayDecoration;

  /// - thursdayDecoration, changes the decoration of only thursday weekday.
  final WeekdaysDecoration? thursdayDecoration;

  /// - fridayDecoration, changes the decoration of only friday weekday.
  final WeekdaysDecoration? fridayDecoration;

  /// - saturdayDecoration, changes the decoration of only saturday weekday.
  final WeekdaysDecoration? saturdayDecoration;

  /// - sundayDecoration, changes the decoration of only sunday weekday.
  final WeekdaysDecoration? sundayDecoration;

  /// - backgroundColor, changes the background color of all weekdays.
  final Color? backgroundColor;

  final BorderRadiusGeometry? borderRadius;

  WeekdaysProperties({
    this.generalWeekdaysDecoration,
    WeekdaysDecoration? mondayDecoration,
    WeekdaysDecoration? tuesdayDecoration,
    WeekdaysDecoration? wednesdayDecoration,
    WeekdaysDecoration? thursdayDecoration,
    WeekdaysDecoration? fridayDecoration,
    WeekdaysDecoration? saturdayDecoration,
    WeekdaysDecoration? sundayDecoration,
    this.backgroundColor,
    this.borderRadius,
  })  : mondayDecoration = mondayDecoration ?? generalWeekdaysDecoration,
        tuesdayDecoration = tuesdayDecoration ?? generalWeekdaysDecoration,
        wednesdayDecoration = wednesdayDecoration ?? generalWeekdaysDecoration,
        thursdayDecoration = thursdayDecoration ?? generalWeekdaysDecoration,
        fridayDecoration = fridayDecoration ?? generalWeekdaysDecoration,
        saturdayDecoration = saturdayDecoration ?? generalWeekdaysDecoration,
        sundayDecoration = sundayDecoration ?? generalWeekdaysDecoration;

  Map<String, dynamic> toMap() {
    return {
      'generalWeekdaysDecoration': generalWeekdaysDecoration,
      'mondayDecoration': mondayDecoration,
      'tuesdayDecoration': tuesdayDecoration,
      'wednesdayDecoration': wednesdayDecoration,
      'thursdayDecoration': thursdayDecoration,
      'fridayDecoration': fridayDecoration,
      'saturdayDecoration': saturdayDecoration,
      'sundayDecoration': sundayDecoration,
      'backgroundColor': backgroundColor,
      'borderRadius': borderRadius,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeekdaysProperties &&
          runtimeType == other.runtimeType &&
          generalWeekdaysDecoration == other.generalWeekdaysDecoration &&
          mondayDecoration == other.mondayDecoration &&
          tuesdayDecoration == other.tuesdayDecoration &&
          wednesdayDecoration == other.wednesdayDecoration &&
          thursdayDecoration == other.thursdayDecoration &&
          fridayDecoration == other.fridayDecoration &&
          saturdayDecoration == other.saturdayDecoration &&
          sundayDecoration == other.sundayDecoration &&
          backgroundColor == other.backgroundColor &&
          borderRadius == other.borderRadius;

  @override
  int get hashCode =>
      generalWeekdaysDecoration.hashCode ^
      mondayDecoration.hashCode ^
      tuesdayDecoration.hashCode ^
      wednesdayDecoration.hashCode ^
      thursdayDecoration.hashCode ^
      fridayDecoration.hashCode ^
      saturdayDecoration.hashCode ^
      sundayDecoration.hashCode ^
      backgroundColor.hashCode ^
      borderRadius.hashCode;

  // Implement toString to make it easier to see information
  // when using the print statement.
  @override
  String toString() {
    return 'WeekdaysProperties{generalWeekdaysDecoration: $generalWeekdaysDecoration, mondayDecoration: $mondayDecoration, tuesdayDecoration: $tuesdayDecoration, wednesdayDecoration: $wednesdayDecoration, thursdayDecoration: $thursdayDecoration, fridayDecoration: $fridayDecoration, saturdayDecoration: $saturdayDecoration, sundayDecoration: $sundayDecoration, backgroundColor: $backgroundColor, borderRadius: $borderRadius}';
  }
}
