## 2.0.0
* **Note:** After this update we will try to rework the package from scratch to make it more efficient and easy to use. So, if you have any suggestions and ideas please feel free to open an issue.

* **BREAKING:** Now the height of date section is not limited. If you want to limit use `calendarDatesSectionMaxHeight` property. Otherwise it will take available height or 240px if available height is infinite.

  To use the previous default size set `calendarDatesSectionMaxHeight: 40` if using `datePickerCalendarView: DatePickerCalendarView.weekView` or `calendarDatesSectionMaxHeight: 240` if `datePickerCalendarView: DatePickerCalendarView.monthView`.

* Fixes overflow issues on low height and width screens.

## 1.1.0

* Added ```headerProperties``` for changing properties of header section. [#1](https://github.com/chaudharydeepanshu/clean_calendar/issues/1)
  
  This includes customization of month and year color and text style, and customization for navigator buttons icon.

## 1.0.2

* Fixed 'copyWith' isn't defined for 'DateTime' error when using flutter stable channel. [#5](https://github.com/chaudharydeepanshu/clean_calendar/issues/5)

## 1.0.1

* Fixed loading wrong initial week for weekly calendar view due to the changes made in v1.0.0.
* Fixed calendar reset button to not becoming visible when changing from initial week.

## 1.0.0

* **BREAKING:** `DatePickerSelectionMode.single` is removed as it was buggy and didn't provide the developer better control on date picking.

  For easy migration to `DatePickerSelectionMode.singleOrMultiple` see documentation [date-selection](https://web.archive.org/web/20221129220956/https://github.com/chaudharydeepanshu/clean_calendar/blob/master/README.md#date-selection) section or updated example.

* Fixed issue of delayed update in month name when swiping calendar.
* Fixed issue with unable to disable picking on some dates.
* Fixed logic issue in calendar reset button which sometime not resets the month-year header correctly.
* No longer depends on flutter_riverpod as its recent updates were causing many issues eventually delaying updates to this package.
* Note: You can notice lags in debug mode(I will soon work on performance) but there should be no lags in release mode.

## 0.6.2

* **BREAKING:** Updated flutter_riverpod dependency to ^2.0.2
* Updated minimum required Flutter SDK version to 3.0.0
* Updated minimum required Dart SDK version to 2.17.0

## 0.6.1

* **BREAKING:** ```DecorationProperties``` is now ```DatesDecoration```.
* **BREAKING:** ```decorationProperties``` is now ```datesDecoration```.
* **BREAKING:** Now ```monthsSymbol``` takes ```Months``` instead of ```List<String>```.
* **BREAKING:** Now ```weekdaysSymbol``` takes ```Weekdays``` instead of ```List<String>```.
* Added decoration properties for weekdays. [#1](https://github.com/chaudharydeepanshu/clean_calendar/issues/1)
* Updated documentation.

## 0.5.4

* Fixes unwanted spacing in Streak Days after version 0.5.1. [#3](https://github.com/chaudharydeepanshu/clean_calendar/issues/3)

## 0.5.3

* Fixes few overflow and ink issues.
* Added note about dense mode under customisations in documentation.

## 0.5.2

* Updated documentation for weekdaysSymbol, monthsSymbol and startWeekday.

## 0.5.1

* Added support for custom month symbols. [#2](https://github.com/chaudharydeepanshu/clean_calendar/issues/2)
* Added support for custom weekday symbols. [#2](https://github.com/chaudharydeepanshu/clean_calendar/issues/2)
* Added support for setting start weekday for both month and week view. [#2](https://github.com/chaudharydeepanshu/clean_calendar/issues/2)

## 0.4.1

* Moved to stable flutter SDK.

## 0.3.1-dev.1

* Fixed lots of performance issues due to unnecessary rebuilds.

## 0.3.0-dev.2

* Ran ```flutter format .``` to fix analyzer formatting issues.

## 0.3.0-dev.1

* Added weekly calendar view.
* Added ```onCalendarViewDate``` callback to listen for change in calendar view date.
* Updated example to showcase weekly calendar view and ```onCalendarViewDate```.
* Note - For weekly calendar view the default theme properties for leading-trailing dates is same as general dates default theme properties.

## 0.2.0-dev.2

* Fixed README.md tables structure.

## 0.2.0-dev.1

* Removed weird logs from package.
* Optimized calendar scrolling and loading time tremendously.
* Disable and hide different types of dates through their properties.
* Customise dates look and feel by changing its properties.
* Single date selection with customized behaviour.
* Access selected dates.
* Provide pre-selected dates.
* Provide start and end dates for calendar view.
* Provide initial month view for calendar view.
* Provide current date for calendar view.
* Improved documentation.

## 0.0.1-dev.3

* Now, showing only public methods and classes.

## 0.0.1-dev.2

* Updated and fixed typo in Readme.md.

## 0.0.1-dev.1

* Initial development release.