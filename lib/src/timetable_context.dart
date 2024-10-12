import 'package:lib_driver/lib_driver.dart';
import 'package:intl/intl.dart';

int weekNumber(DateTime date) {
  int dayOfYear = int.parse(DateFormat("D").format(date));
  return ((dayOfYear - date.weekday + 10) / 7).floor();
}

class DemoTimetableContext extends TimetableContextBase {
  @override
  Future<Timetable> getTimetable(DateTime date) {
    return Future.value(
        Timetable(beginMinutes: 480, lengthMinutes: 420, lessons: [
      Lesson(
          timeMinutes: 480,
          lengthMinutes: 60,
          dayIndex: 0,
          subjectName: "Matematik 5",
		  hallName: "E204",
		  teacherNames: ["Bo Ek", "Xi Jinping"],
		  lessonColour: LessonColour.grey),
      Lesson(
          timeMinutes: 570,
          lengthMinutes: 70,
          dayIndex: 0,
          subjectName: "Fysik 420",
		  hallName: "B1337"),
      Lesson(
          timeMinutes: 510,
          lengthMinutes: 140,
          dayIndex: 2,
          subjectName: "dayIndex = 2 => this is on a wednesday"),
      Lesson(
          timeMinutes: 660,
          lengthMinutes: 40,
          dayIndex: 2,
          subjectName: "this week number = ${weekNumber(date)}")
    ]));
  }
}
