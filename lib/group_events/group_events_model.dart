import '/flutter_flow/flutter_flow_util.dart';
import 'group_events_widget.dart' show GroupEventsWidget;
import 'package:flutter/material.dart';

class GroupEventsModel extends FlutterFlowModel<GroupEventsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchBox widget.
  FocusNode? searchBoxFocusNode;
  TextEditingController? searchBoxTextController;
  String? Function(BuildContext, String?)? searchBoxTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBoxFocusNode?.dispose();
    searchBoxTextController?.dispose();
  }
}
