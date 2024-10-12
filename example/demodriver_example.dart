import 'package:lib_driver/lib_driver.dart';
import 'package:demodriver/demodriver.dart';

void main() async {
  // the login method is not fully complete in lib_driver yet so thats why this demo driver doesn't include the login driver
  //
  // to starkad: but when you are developing, keep in mind that, when we will have login methods implemented, the login driver will RETURN a driver for you. Thats because the login driver will initiatie a driver with the credentials and session tokens already specified so doing what we are doing below will not happen when this is shipped
  //
  // so only create a new driver once, and use it for all of the rest of the app
  //
  // when in production the code below will instead look something like this:
  // final driver = DemoLoginMethod().login("user", "pwd");
  final driver = DemoDriver(exampleSessionToken: "a token");

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
