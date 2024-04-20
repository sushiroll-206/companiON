import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'interest_model.dart';
export 'interest_model.dart';

class InterestWidget extends StatefulWidget {
  const InterestWidget({
    super.key,
    this.parameter1,
    this.parameter2,
  });

  final String? parameter1;
  final DocumentReference? parameter2;

  @override
  State<InterestWidget> createState() => _InterestWidgetState();
}

class _InterestWidgetState extends State<InterestWidget> {
  late InterestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InterestModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await Future.wait([
            Future(() async {
              await currentUserReference!.update({
                ...mapToFirestore(
                  {
                    'interests': FieldValue.arrayUnion([widget.parameter2]),
                  },
                ),
              });
            }),
          ]);
        },
        child: Container(
          height: 50.0,
          constraints: const BoxConstraints(
            minWidth: 75.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(45.0),
              bottomRight: Radius.circular(45.0),
              topLeft: Radius.circular(45.0),
              topRight: Radius.circular(45.0),
            ),
            border: Border.all(
              color: const Color(0xFFBC9FD8),
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 14.0, 8.0, 0.0),
            child: Text(
              widget.parameter1!,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Lato',
                    color: const Color(0xFFBC9FD8),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
