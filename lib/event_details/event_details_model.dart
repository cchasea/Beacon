import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'event_details_widget.dart' show EventDetailsWidget;
import 'package:flutter/material.dart';

class EventDetailsModel extends FlutterFlowModel<EventDetailsWidget> {
  ///  Local state fields for this page.

  bool editingMode = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for name_textfield widget.
  FocusNode? nameTextfieldFocusNode;
  TextEditingController? nameTextfieldTextController;
  String? Function(BuildContext, String?)? nameTextfieldTextControllerValidator;
  // State field(s) for selectedDate_TextField widget.
  FocusNode? selectedDateTextFieldFocusNode;
  TextEditingController? selectedDateTextFieldTextController;
  String? Function(BuildContext, String?)?
      selectedDateTextFieldTextControllerValidator;
  // State field(s) for sharedWith_SwitchListTile widget.
  bool? sharedWithSwitchListTileValue;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    nameTextfieldFocusNode?.dispose();
    nameTextfieldTextController?.dispose();

    selectedDateTextFieldFocusNode?.dispose();
    selectedDateTextFieldTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
