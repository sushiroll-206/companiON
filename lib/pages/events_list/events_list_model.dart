import '/flutter_flow/flutter_flow_util.dart';
import 'events_list_widget.dart' show EventsListWidget;
import 'package:flutter/material.dart';

class EventsListModel extends FlutterFlowModel<EventsListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
