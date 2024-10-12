import 'package:lib_driver/lib_driver.dart';

class DemoAttendenceContext extends AttendenceContextBase {
  @override
  Future<List<AbsenceEvent>> getAbsenceEvents() {
    return Future.value([
      AbsenceEvent(
          id: "an unique id",
          date: DateTime.now(),
          duration: Duration(minutes: 70),
          absenceIsValid: true,
          reason: "Anmäld frånvaro från hemmet"),
      AbsenceEvent(
          id: "another unique id",
          date: DateTime.now().subtract(Duration(days: 1)),
          duration: Duration(minutes: 40),
          absenceIsValid: false,
          reason: "Oanmäld frånvaro")
    ]);
  }
}
