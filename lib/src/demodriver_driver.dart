import 'package:demodriver/src/attendence_context.dart';
import 'package:demodriver/src/calendar_context.dart';
import 'package:demodriver/src/notifications_context.dart';
import 'package:demodriver/src/timetable_context.dart';
import 'package:lib_driver/lib_driver.dart';

class DemoDriver extends DriverBase {
	String exampleSessionToken;

  @override
  DriverMetadata get driverMetadata =>
      DriverMetadata(platformName: "Demo platform", supportedFeatures: [
        ContextType.timetable,
        ContextType.calendar,
        ContextType.notifications,
        ContextType.attendence
      ]);

  @override
  TimetableContextBase? getTimetableContext() {
    return DemoTimetableContext();
  }

  @override
  CalendarContextBase? getCalendarContext() {
    return DemoCalendarContext();
  }

  @override
  NotificationsContextBase? getNotificationsContext() {
    return DemoNotificationsContext();
  }

  @override
  AttendenceContextBase? getAttendenceContext() {
    return DemoAttendenceContext();
  }

  DemoDriver({required this.exampleSessionToken});
}
