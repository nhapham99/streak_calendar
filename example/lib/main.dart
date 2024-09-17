import 'package:clean_calendar/streak_calendar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<DateTime> selectedDates = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("Calendar"),
      ),
      body: Center(
        child: ListView(
          children: [
            StreakCalendar(
              enableDenseViewForDates: true,
              enableDenseSplashForDates: true,
              datesForStreaks: [
                DateTime(2024, 09, 1),
                DateTime(2024, 09, 2),
                DateTime(2024, 09, 3),
                DateTime(2024, 09, 4),
              ],
              headerProperties: HeaderProperties(
                builder: (_, date, onNextMonth, onPreviousMonth) {
                  // Replace your builder here
                  return Container();
                },
              ),
              dateSelectionMode: DatePickerSelectionMode.singleOrMultiple,
              startWeekday: WeekDay.wednesday,
              selectedDates: selectedDates,
              onCalendarViewDate: (DateTime calendarViewDate) {
                // print(calendarViewDate);
              },
              currentDateProperties: DatesProperties(
                datesDecoration: DatesDecoration(
                  datesBackgroundColor: Colors.white,
                  datesBorderColor: Colors.transparent,
                  datesShadowColor: Colors.red,
                  datesShadowHeight: 2.0,
                ),
              ),
              streakDatesProperties: DatesProperties(
                datesDecoration: DatesDecoration(
                  datesBackgroundColor: Colors.red,
                  datesBorderColor: Colors.transparent,
                ),
              ),
              onSelectedDates: (List<DateTime> value) {
                setState(() {
                  if (selectedDates.contains(value.first)) {
                    selectedDates.remove(value.first);
                  } else {
                    selectedDates.add(value.first);
                  }
                });
                // print(selectedDates);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            StreakCalendar(
              calendarDatesSectionMaxHeight: 40,
              datePickerCalendarView: DatePickerCalendarView.weekView,
              enableDenseViewForDates: true,
              enableDenseSplashForDates: true,
              datesForStreaks: [
                DateTime(2023, 01, 5),
                DateTime(2023, 01, 6),
                DateTime(2023, 01, 7),
                DateTime(2023, 01, 9),
                DateTime(2023, 01, 10),
                DateTime(2023, 01, 11),
                DateTime(2023, 01, 13),
                DateTime(2023, 01, 20),
                DateTime(2023, 01, 21),
                DateTime(2023, 01, 23),
                DateTime(2023, 01, 24),
                DateTime(2023, 01, 25),
              ],
              dateSelectionMode: DatePickerSelectionMode.singleOrMultiple,
              onCalendarViewDate: (DateTime calendarViewDate) {
                // print(calendarViewDate);
              },
              selectedDates: selectedDates,
              onSelectedDates: (List<DateTime> value) {
                setState(() {
                  if (selectedDates.contains(value.first)) {
                    selectedDates.remove(value.first);
                  } else {
                    selectedDates.add(value.first);
                  }
                });
                // print(selectedDates);
              },
            ),
            StreakCalendar(
              calendarDatesSectionMaxHeight: 40,
              datePickerCalendarView: DatePickerCalendarView.weekView,
              enableDenseViewForDates: true,
              enableDenseSplashForDates: true,
              datesForStreaks: [
                DateTime(2023, 01, 5),
                DateTime(2023, 01, 6),
                DateTime(2023, 01, 7),
                DateTime(2023, 01, 9),
                DateTime(2023, 01, 10),
                DateTime(2023, 01, 11),
                DateTime(2023, 01, 13),
                DateTime(2023, 01, 20),
                DateTime(2023, 01, 21),
                DateTime(2023, 01, 23),
                DateTime(2023, 01, 24),
                DateTime(2023, 01, 25),
              ],
              dateSelectionMode: DatePickerSelectionMode.disable,
              onCalendarViewDate: (DateTime calendarViewDate) {
                // print(calendarViewDate);
              },
              startWeekday: WeekDay.monday,
              weekdaysSymbol: const Weekdays(
                sunday: "s",
                monday: "m",
                tuesday: "t",
                wednesday: "w",
                thursday: "t",
                friday: "f",
                saturday: "s",
              ),
              monthsSymbol: const Months(
                  january: "Jan",
                  february: "Feb",
                  march: "Mar",
                  april: "Apr",
                  may: "May",
                  june: "Jun",
                  july: "Jul",
                  august: "Aug",
                  september: "Sep",
                  october: "Oct",
                  november: "Nov",
                  december: "Dec"),
              weekdaysProperties: WeekdaysProperties(
                generalWeekdaysDecoration: WeekdaysDecoration(weekdayTextColor: Colors.red),
                sundayDecoration: WeekdaysDecoration(
                    weekdayTextColor: Colors.green,
                    weekdayTextStyle: Theme.of(context).textTheme.headlineMedium),
                saturdayDecoration: WeekdaysDecoration(
                    weekdayTextColor: Colors.green,
                    weekdayTextStyle: Theme.of(context).textTheme.headlineMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
