import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'delete_event_model.dart';
export 'delete_event_model.dart';

class DeleteEventWidget extends StatefulWidget {
  const DeleteEventWidget({
    super.key,
    required this.eventsDoc,
  });

  final CalendarEventRecord? eventsDoc;

  @override
  State<DeleteEventWidget> createState() => _DeleteEventWidgetState();
}

class _DeleteEventWidgetState extends State<DeleteEventWidget> {
  late DeleteEventModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteEventModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.0,
      decoration: BoxDecoration(
        color: Color(0xFF5D6875),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Are you sure you want to delete?',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  font: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).tertiary,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('DELETE_EVENT_COMP_Delete_button_ON_TAP');
                  logFirebaseEvent('Delete_button_backend_call');
                  await widget.eventsDoc!.reference.delete();
                  logFirebaseEvent('Delete_button_bottom_sheet');
                  Navigator.pop(context);
                  logFirebaseEvent('Delete_button_navigate_to');

                  context.goNamed(CalanderWidget.routeName);
                },
                text: 'Delete',
                options: FFButtonOptions(
                  height: 47.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFFA292C),
                  textStyle:
                      FlutterFlowTheme.of(context).headlineMedium.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).tertiary,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('DELETE_EVENT_COMP_Cancel_ON_TAP');
                  logFirebaseEvent('Cancel_bottom_sheet');
                  Navigator.pop(context);
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  height: 47.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle:
                      FlutterFlowTheme.of(context).headlineMedium.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ],
          ),
        ].divide(SizedBox(height: 15.0)).around(SizedBox(height: 15.0)),
      ),
    );
  }
}
