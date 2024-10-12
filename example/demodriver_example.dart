import 'package:lib_driver/lib_driver.dart';
import 'package:demodriver/demodriver.dart';

void main() async {
  final driver = DemoDriver();

  final timetablesContext = driver.getTimetableContext();
  if (timetablesContext != null) {
    final timetable = await timetablesContext.getTimetable(DateTime.now());

    print("Printing lessons:");
    for (var lesson in timetable.lessons) {
      print(
          "'${lesson.subjectName}'     teachers: ${lesson.teacherNames?.join(', ') ?? ''}");
    }
    print("");
  }

  final notificationsContext = driver.getNotificationsContext();
  if (notificationsContext != null) {
    final notifications = await notificationsContext.getNotifications();

    print("Printing notifications:");
    for (var notif in notifications) {
      switch (notif) {
        case final CalendarNotification calendarNotif:
          final event = calendarNotif.event;
		  print("Calendar event: ${event.title}");
          break;
        default:
      }
    }
  }
}
