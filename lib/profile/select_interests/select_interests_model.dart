import '/flutter_flow/flutter_flow_util.dart';
import 'select_interests_widget.dart' show SelectInterestsWidget;
import 'package:flutter/material.dart';

class SelectInterestsModel extends FlutterFlowModel<SelectInterestsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
