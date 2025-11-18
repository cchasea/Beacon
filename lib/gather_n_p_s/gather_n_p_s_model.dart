import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'gather_n_p_s_widget.dart' show GatherNPSWidget;
import 'package:flutter/material.dart';

class GatherNPSModel extends FlutterFlowModel<GatherNPSWidget> {
  ///  Local state fields for this page.

  int rating = -1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
