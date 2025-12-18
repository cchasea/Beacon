import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'import_brightspace_widget.dart' show ImportBrightspaceWidget;
import 'package:flutter/material.dart';

class ImportBrightspaceModel extends FlutterFlowModel<ImportBrightspaceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (ImportBrightspaceFeed)] action in Button widget.
  ApiCallResponse? apiResultgtn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
