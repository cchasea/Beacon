import '/flutter_flow/flutter_flow_util.dart';
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
  // State field(s) for sharedWith_SwitchListTile widget.
  bool? sharedWithSwitchListTileValue;
  // State field(s) for selectedDate_TextField widget.
  FocusNode? selectedDateTextFieldFocusNode;
  TextEditingController? selectedDateTextFieldTextController;
  String? Function(BuildContext, String?)?
      selectedDateTextFieldTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for startTime_textField widget.
  FocusNode? startTimeTextFieldFocusNode;
  TextEditingController? startTimeTextFieldTextController;
  String? Function(BuildContext, String?)?
      startTimeTextFieldTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for EndTime_textField widget.
  FocusNode? endTimeTextFieldFocusNode;
  TextEditingController? endTimeTextFieldTextController;
  String? Function(BuildContext, String?)?
      endTimeTextFieldTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameTextfieldFocusNode?.dispose();
    nameTextfieldTextController?.dispose();

    selectedDateTextFieldFocusNode?.dispose();
    selectedDateTextFieldTextController?.dispose();

    startTimeTextFieldFocusNode?.dispose();
    startTimeTextFieldTextController?.dispose();

    endTimeTextFieldFocusNode?.dispose();
    endTimeTextFieldTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController5?.dispose();
  }
}
