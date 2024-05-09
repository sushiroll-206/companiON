import '/flutter_flow/flutter_flow_util.dart';
import 'joined_event_copy_widget.dart' show JoinedEventCopyWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class JoinedEventCopyModel extends FlutterFlowModel<JoinedEventCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ScrollableBody widget.
  ScrollController? scrollableBody;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    scrollableBody = ScrollController();
    columnController = ScrollController();
    listViewController1 = ScrollController();
    listViewController2 = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    scrollableBody?.dispose();
    columnController?.dispose();
    expandableExpandableController.dispose();
    listViewController1?.dispose();
    listViewController2?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
