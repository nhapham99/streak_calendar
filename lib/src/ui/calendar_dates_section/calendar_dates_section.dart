import 'package:clean_calendar/src/models/calendar_properties.dart';
import 'package:clean_calendar/src/state/page_controller.dart';
import 'package:clean_calendar/src/ui/calendar_dates_section/pageview_builders.dart';
import 'package:flutter/material.dart';

class CalendarDatesSection extends StatelessWidget {
  const CalendarDatesSection(
      {super.key,
      required this.calendarProperties,
      required this.pageControllerState});

  final CalendarProperties calendarProperties;
  final PageControllerState pageControllerState;

  @override
  Widget build(BuildContext context) {
    if (calendarProperties.dateSelectionMode ==
            DatePickerSelectionMode.singleOrMultiple ||
        calendarProperties.dateSelectionMode ==
            DatePickerSelectionMode.disable) {
      return ScrollablePageViewBuilder(
        calendarProperties: calendarProperties,
        pageControllerState: pageControllerState,
      );
    } else {
      return const SizedBox();
    }
  }
}
