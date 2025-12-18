import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'group_events_widget.dart' show GroupEventsWidget;
import 'package:flutter/material.dart';

class GroupEventsModel extends FlutterFlowModel<GroupEventsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for usernameField widget.
  FocusNode? usernameFieldFocusNode;
  TextEditingController? usernameFieldTextController;
  String? Function(BuildContext, String?)? usernameFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFieldFocusNode?.dispose();
    usernameFieldTextController?.dispose();
  }
}
