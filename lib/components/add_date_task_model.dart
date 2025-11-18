import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_date_task_widget.dart' show AddDateTaskWidget;
import 'package:flutter/material.dart';

class AddDateTaskModel extends FlutterFlowModel<AddDateTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for title_textField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  // State field(s) for dateChoosen_TextField widget.
  FocusNode? dateChoosenTextFieldFocusNode;
  TextEditingController? dateChoosenTextFieldTextController;
  String? Function(BuildContext, String?)?
      dateChoosenTextFieldTextControllerValidator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for details_textField widget.
  FocusNode? detailsTextFieldFocusNode;
  TextEditingController? detailsTextFieldTextController;
  String? Function(BuildContext, String?)?
      detailsTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    dateChoosenTextFieldFocusNode?.dispose();
    dateChoosenTextFieldTextController?.dispose();

    detailsTextFieldFocusNode?.dispose();
    detailsTextFieldTextController?.dispose();
  }
}
