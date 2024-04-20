import '/flutter_flow/flutter_flow_util.dart';
import 'event_screen_widget.dart' show EventScreenWidget;
import 'package:flutter/material.dart';

class EventScreenModel extends FlutterFlowModel<EventScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
