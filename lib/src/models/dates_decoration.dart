import 'package:flutter/material.dart';

class DatesDecoration {
  /// - datesBackgroundColor, changes the dates background color.
  final Color? datesBackgroundColor;

  /// - datesTextColor, changes the dates text color.
  final Color? datesTextColor;

  /// - datesTextStyle, changes the dates text style.
  final TextStyle? datesTextStyle;

  /// - datesBorderColor, changes the dates border color.
  final Color? datesBorderColor;

  /// - datesBorderRadius, changes the dates border radius.
  final double? datesBorderRadius;

  /// - datesShadowHeight, changes the shadow height.
  final double? datesShadowHeight;

  /// - datesShadowColor, changes the shadow color.
  final Color? datesShadowColor;

  DatesDecoration({
    this.datesBackgroundColor,
    this.datesTextColor,
    this.datesTextStyle,
    this.datesBorderColor,
    this.datesBorderRadius,
    this.datesShadowHeight,
    this.datesShadowColor,
  });

  /// Creates copy of DatesDecoration object with the given
  /// values replaced with new values.
  DatesDecoration copyWith({
    Color? datesBackgroundColor,
    Color? datesTextColor,
    TextStyle? datesTextStyle,
    Color? datesBorderColor,
    double? datesBorderRadius,
    double? datesShadowHeight,
    Color? datesShadowColor,
  }) {
    return DatesDecoration(
      datesBackgroundColor: datesBackgroundColor ?? this.datesBackgroundColor,
      datesTextColor: datesTextColor ?? this.datesTextColor,
      datesTextStyle: datesTextStyle ?? this.datesTextStyle,
      datesBorderColor: datesBorderColor ?? this.datesBorderColor,
      datesBorderRadius: datesBorderRadius ?? this.datesBorderRadius,
      datesShadowHeight: datesShadowHeight ?? this.datesShadowHeight,
      datesShadowColor: datesShadowColor ?? this.datesShadowColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DatesDecoration &&
          runtimeType == other.runtimeType &&
          datesBackgroundColor == other.datesBackgroundColor &&
          datesTextColor == other.datesTextColor &&
          datesTextStyle == other.datesTextStyle &&
          datesBorderColor == other.datesBorderColor &&
          datesBorderRadius == other.datesBorderRadius &&
          datesShadowHeight == other.datesShadowHeight &&
          datesShadowColor == other.datesShadowColor;

  @override
  int get hashCode =>
      datesBackgroundColor.hashCode ^
      datesTextColor.hashCode ^
      datesTextStyle.hashCode ^
      datesBorderColor.hashCode ^
      datesBorderRadius.hashCode ^
      datesShadowHeight.hashCode ^
      datesShadowColor.hashCode;

  // Implement toString to make it easier to see information
  // when using the print statement.
  @override
  String toString() {
    return 'DatesDecoration{datesBackgroundColor: $datesBackgroundColor, datesTextColor: $datesTextColor, datesTextStyle: $datesTextStyle, datesBorderColor: $datesBorderColor, datesBorderRadius: $datesBorderRadius, shadowHeight: $datesShadowHeight, shadowColor: $datesShadowColor}';
  }
}
