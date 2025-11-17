import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  List<String> websites = [];
  void addToWebsites(String item) => websites.add(item);
  void removeFromWebsites(String item) => websites.remove(item);
  void removeAtIndexFromWebsites(int index) => websites.removeAt(index);
  void insertAtIndexInWebsites(int index, String item) =>
      websites.insert(index, item);
  void updateWebsitesAtIndex(int index, Function(String) updateFn) =>
      websites[index] = updateFn(websites[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_profilePic = false;
  FFUploadedFile uploadedLocalFile_profilePic =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_profilePic = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for role widget.
  String? roleValue;
  FormFieldController<String>? roleValueController;
  // State field(s) for phone_number widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();
  }
}
