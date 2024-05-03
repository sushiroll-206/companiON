import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_event_widget.dart' show EditEventWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditEventModel extends FlutterFlowModel<EditEventWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-Title widget.
  FocusNode? textFieldTitleFocusNode;
  TextEditingController? textFieldTitleTextController;
  String? Function(BuildContext, String?)?
      textFieldTitleTextControllerValidator;
  String? _textFieldTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for Switch-Limit widget.
  bool switchLimitValue = false;
  // State field(s) for TextField-maxNum widget.
  FocusNode? textFieldMaxNumFocusNode;
  TextEditingController? textFieldMaxNumTextController;
  String? Function(BuildContext, String?)?
      textFieldMaxNumTextControllerValidator;
  // State field(s) for TextField-Description widget.
  FocusNode? textFieldDescriptionFocusNode;
  TextEditingController? textFieldDescriptionTextController;
  String? Function(BuildContext, String?)?
      textFieldDescriptionTextControllerValidator;
  String? _textFieldDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for dropDown-contact widget.
  String? dropDownContactValue;
  FormFieldController<String>? dropDownContactValueController;
  // State field(s) for textField-contact widget.
  FocusNode? textFieldContactFocusNode;
  TextEditingController? textFieldContactTextController;
  String? Function(BuildContext, String?)?
      textFieldContactTextControllerValidator;
  String? _textFieldContactTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldTitleTextControllerValidator =
        _textFieldTitleTextControllerValidator;
    textFieldDescriptionTextControllerValidator =
        _textFieldDescriptionTextControllerValidator;
    textFieldContactTextControllerValidator =
        _textFieldContactTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldTitleFocusNode?.dispose();
    textFieldTitleTextController?.dispose();

    textFieldMaxNumFocusNode?.dispose();
    textFieldMaxNumTextController?.dispose();

    textFieldDescriptionFocusNode?.dispose();
    textFieldDescriptionTextController?.dispose();

    textFieldContactFocusNode?.dispose();
    textFieldContactTextController?.dispose();
  }
}
