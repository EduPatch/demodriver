import 'package:lib_driver/lib_driver.dart';

class DemoCalendarContext extends CalendarContextBase {
  @override
  Future<List<CalendarEvent>> getCalendarEvents() {
    var begin = DateTime.now();
    var end = begin.add(Duration(minutes: 60));

    return Future.value([
      CalendarEvent(
          id: "the id may be whatever, it's only guaranteed to be unique",
          begin: begin,
          end: end,
          title: "Zuck vs Elon epic death match",
		  description: "i will enjoy this")
    ]);
  }
}
