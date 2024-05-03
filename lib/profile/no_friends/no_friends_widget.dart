import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_friends_model.dart';
export 'no_friends_model.dart';

class NoFriendsWidget extends StatefulWidget {
  const NoFriendsWidget({super.key});

  @override
  State<NoFriendsWidget> createState() => _NoFriendsWidgetState();
}

class _NoFriendsWidgetState extends State<NoFriendsWidget> {
  late NoFriendsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoFriendsModel());
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
          'You haven\'t added any Friends',
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
