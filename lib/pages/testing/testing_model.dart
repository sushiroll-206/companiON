import '/flutter_flow/flutter_flow_util.dart';
import 'testing_widget.dart' show TestingWidget;
import 'package:flutter/material.dart';

class TestingModel extends FlutterFlowModel<TestingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
