import 'package:demodriver/src/calendar_context.dart';
import 'package:lib_driver/lib_driver.dart';

class DemoNotificationsContext extends NotificationsContextBase {
  @override
  Future<List<Notification>> getNotifications() async {
    var calendarEvents = await DemoCalendarContext().getCalendarEvents();

    List<CalendarNotification> notifications = [];
    for (var event in calendarEvents) {
      notifications.add(CalendarNotification(
          id: event.id, sentDate: event.begin, event: event));
    }

    return Future.value(notifications);
  }
}
