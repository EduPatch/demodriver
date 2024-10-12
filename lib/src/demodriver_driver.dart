import 'package:demodriver/src/timetable_context.dart';
import 'package:lib_driver/lib_driver.dart';

class DemoDriver extends DriverBase {
  @override
  DriverMetadata get driverMetadata => DriverMetadata(
      platformName: "Demo platform",
      supportedFeatures: [ContextType.timetable]);

  @override
  TimetableContextBase? getTimetableContext() {
    return DemoTimetableContext();
  }
}
