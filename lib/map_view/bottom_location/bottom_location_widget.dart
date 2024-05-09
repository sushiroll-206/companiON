import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'bottom_location_model.dart';
export 'bottom_location_model.dart';

class BottomLocationWidget extends StatefulWidget {
  const BottomLocationWidget({
    super.key,
    required this.locationRef,
  });

  final EventsRecord? locationRef;

  @override
  State<BottomLocationWidget> createState() => _BottomLocationWidgetState();
}

class _BottomLocationWidgetState extends State<BottomLocationWidget> {
  late BottomLocationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomLocationModel());
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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.locationRef?.hasEventImage() ?? true)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            widget.locationRef!.eventImage,
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (widget.locationRef!.attendees
                            .contains(currentUserReference)) {
                          context.pushNamed(
                            'JoinedEvent',
                            queryParameters: {
                              'eventRef': serializeParam(
                                widget.locationRef?.reference,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          context.pushNamed(
                            'EventScreen',
                            queryParameters: {
                              'eventRef': serializeParam(
                                widget.locationRef?.reference,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      child: ListTile(
                        title: Text(
                          widget.locationRef!.name,
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        subtitle: Text(
                          dateTimeFormat(
                              'MMMEd', widget.locationRef!.dateStart!),
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                        tileColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        dense: false,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.locationRef?.locationString,
                              'address',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            dateTimeFormat(
                                'jm', widget.locationRef!.startTime!),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Text(
                              'to',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Text(
                            dateTimeFormat('jm', widget.locationRef!.endTime!),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                          maxHeight: double.infinity,
                        ),
                        decoration: const BoxDecoration(),
                        child: Text(
                          valueOrDefault<String>(
                            widget.locationRef?.description,
                            'No description available',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: const BoxDecoration(),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 12.0, 8.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await Share.share(
                                'Ello ',
                                sharePositionOrigin:
                                    getWidgetBoundingBox(context),
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context).primary,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.share_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Share',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Lato',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 8.0, 12.0, 8.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Close',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
