import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_events_model.dart';
export 'no_events_model.dart';

class NoEventsWidget extends StatefulWidget {
  const NoEventsWidget({super.key});

  @override
  State<NoEventsWidget> createState() => _NoEventsWidgetState();
}

class _NoEventsWidgetState extends State<NoEventsWidget> {
  late NoEventsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoEventsModel());
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
          'You have no upcoming events',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 24.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          child: Text(
            'Visit the map to join an event!',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ],
    );
  }
}
