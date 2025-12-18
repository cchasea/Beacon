import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'calendar_widget.dart' show CalendarWidget;
import 'package:flutter/material.dart';

class CalendarModel extends FlutterFlowModel<CalendarWidget> {
  ///  Local state fields for this page.

  DateTime? choosenDay;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
