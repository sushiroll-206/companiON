import '/flutter_flow/flutter_flow_util.dart';
import 'other_profile_widget.dart' show OtherProfileWidget;
import 'package:flutter/material.dart';

class OtherProfileModel extends FlutterFlowModel<OtherProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
