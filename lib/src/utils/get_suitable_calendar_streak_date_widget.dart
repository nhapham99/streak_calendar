import 'package:clean_calendar/src/models/calendar_properties.dart';
import 'package:clean_calendar/src/ui/calendar_dates_section/grid_view_elements/calendar_streak_date_widgets.dart';
import 'package:flutter/material.dart';

class GetSuitableCalendarStreakDateWidget extends StatelessWidget {
  const GetSuitableCalendarStreakDateWidget(
      {super.key,
      required this.calendarProperties,
      required this.pageViewElementDate,
      required this.pageViewDate});

  final CalendarProperties calendarProperties;
  final DateTime pageViewElementDate;
  final DateTime pageViewDate;

  @override
  Widget build(BuildContext context) {
    /// Called when streak date have streak date just before and just after also.
    if (calendarProperties.datesForStreaks.contains(pageViewElementDate) ||
        calendarProperties.datesForFreezedStreaks
            .contains(pageViewElementDate)) {
      final hasNextDayStreak = calendarProperties.datesForStreaks
              .contains(pageViewElementDate.add(const Duration(days: 1))) ||
          calendarProperties.datesForFreezedStreaks
              .contains(pageViewElementDate.add(const Duration(days: 1)));
      final hasPrevDayStreak = calendarProperties.datesForStreaks.contains(
              pageViewElementDate.subtract(const Duration(days: 1))) ||
          calendarProperties.datesForFreezedStreaks
              .contains(pageViewElementDate.subtract(const Duration(days: 1)));
      final isDenseView = calendarProperties.enableDenseViewForDates;
      final isDenseSplash = calendarProperties.enableDenseSplashForDates;

      if (hasNextDayStreak && hasPrevDayStreak) {
        if (isDenseView && isDenseSplash) {
          return CalendarStreakBetweenDenseSplashDate(
            calendarProperties: calendarProperties,
            pageViewElementDate: pageViewElementDate,
            pageViewDate: pageViewDate,
          );
        }
        return CalendarStreakBetweenExpandedDate(
          calendarProperties: calendarProperties,
          pageViewElementDate: pageViewElementDate,
          pageViewDate: pageViewDate,
        );
      }

      if (hasNextDayStreak) {
        if (isDenseView && isDenseSplash) {
          return CalendarStreakStartDenseSplashDate(
            calendarProperties: calendarProperties,
            pageViewElementDate: pageViewElementDate,
            pageViewDate: pageViewDate,
          );
        }
        return isDenseView
            ? CalendarStreakStartDenseDate(
                calendarProperties: calendarProperties,
                pageViewElementDate: pageViewElementDate,
                pageViewDate: pageViewDate,
              )
            : CalendarStreakStartExpandedDate(
                calendarProperties: calendarProperties,
                pageViewElementDate: pageViewElementDate,
                pageViewDate: pageViewDate,
              );
      }

      if (hasPrevDayStreak) {
        if (isDenseView && isDenseSplash) {
          return CalendarStreakEndDenseSplashDate(
            calendarProperties: calendarProperties,
            pageViewElementDate: pageViewElementDate,
            pageViewDate: pageViewDate,
          );
        }
        return isDenseView
            ? CalendarStreakEndDenseDate(
                calendarProperties: calendarProperties,
                pageViewElementDate: pageViewElementDate,
                pageViewDate: pageViewDate,
              )
            : CalendarStreakEndExpandedDate(
                calendarProperties: calendarProperties,
                pageViewElementDate: pageViewElementDate,
                pageViewDate: pageViewDate,
              );
      }

      // When it's a single date streak
      if (isDenseView && isDenseSplash) {
        return CalendarStreakSingleDenseSplashDate(
          calendarProperties: calendarProperties,
          pageViewElementDate: pageViewElementDate,
          pageViewDate: pageViewDate,
        );
      }
      return isDenseView
          ? CalendarStreakSingleDenseDate(
              calendarProperties: calendarProperties,
              pageViewElementDate: pageViewElementDate,
              pageViewDate: pageViewDate,
            )
          : CalendarStreakSingleExpandedDate(
              calendarProperties: calendarProperties,
              pageViewElementDate: pageViewElementDate,
              pageViewDate: pageViewDate,
            );
    }

    return const SizedBox();
  }
}
