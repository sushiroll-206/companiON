import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_interests_other_model.dart';
export 'no_interests_other_model.dart';

class NoInterestsOtherWidget extends StatefulWidget {
  const NoInterestsOtherWidget({super.key});

  @override
  State<NoInterestsOtherWidget> createState() => _NoInterestsOtherWidgetState();
}

class _NoInterestsOtherWidgetState extends State<NoInterestsOtherWidget> {
  late NoInterestsOtherModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoInterestsOtherModel());
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
        Text(
          'This user hasn\'t selected any personal interests',
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
