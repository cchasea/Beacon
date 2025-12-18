import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_date_task_widget.dart' show AddDateTaskWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AddDateTaskModel extends FlutterFlowModel<AddDateTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for title_textField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  // State field(s) for eventVStask_choiceChips widget.
  FormFieldController<List<String>>? eventVStaskChoiceChipsValueController;
  String? get eventVStaskChoiceChipsValue =>
      eventVStaskChoiceChipsValueController?.value?.firstOrNull;
  set eventVStaskChoiceChipsValue(String? val) =>
      eventVStaskChoiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for ExpandableFriendsList widget.
  late ExpandableController expandableFriendsListExpandableController;

  // State field(s) for date_textField widget.
  FocusNode? dateTextFieldFocusNode;
  TextEditingController? dateTextFieldTextController;
  String? Function(BuildContext, String?)? dateTextFieldTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for startTime_TextField widget.
  FocusNode? startTimeTextFieldFocusNode;
  TextEditingController? startTimeTextFieldTextController;
  String? Function(BuildContext, String?)?
      startTimeTextFieldTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for endTime_TextField widget.
  FocusNode? endTimeTextFieldFocusNode;
  TextEditingController? endTimeTextFieldTextController;
  String? Function(BuildContext, String?)?
      endTimeTextFieldTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for details_textField widget.
  FocusNode? detailsTextFieldFocusNode;
  TextEditingController? detailsTextFieldTextController;
  String? Function(BuildContext, String?)?
      detailsTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    expandableFriendsListExpandableController.dispose();
    dateTextFieldFocusNode?.dispose();
    dateTextFieldTextController?.dispose();

    startTimeTextFieldFocusNode?.dispose();
    startTimeTextFieldTextController?.dispose();

    endTimeTextFieldFocusNode?.dispose();
    endTimeTextFieldTextController?.dispose();

    detailsTextFieldFocusNode?.dispose();
    detailsTextFieldTextController?.dispose();
  }
}
