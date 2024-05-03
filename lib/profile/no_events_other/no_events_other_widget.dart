import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_events_other_model.dart';
export 'no_events_other_model.dart';

class NoEventsOtherWidget extends StatefulWidget {
  const NoEventsOtherWidget({super.key});

  @override
  State<NoEventsOtherWidget> createState() => _NoEventsOtherWidgetState();
}

class _NoEventsOtherWidgetState extends State<NoEventsOtherWidget> {
  late NoEventsOtherModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoEventsOtherModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.calendar_today_rounded,
          color: FlutterFlowTheme.of(context).primary,
          size: 72.0,
        ),
        Text(
          'This user has no upcoming events',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 24.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
