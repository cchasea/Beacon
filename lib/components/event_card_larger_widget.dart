import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'event_card_larger_model.dart';
export 'event_card_larger_model.dart';

class EventCardLargerWidget extends StatefulWidget {
  const EventCardLargerWidget({
    super.key,
    required this.eventsDoc,
  });

  final CalendarEventRecord? eventsDoc;

  @override
  State<EventCardLargerWidget> createState() => _EventCardLargerWidgetState();
}

class _EventCardLargerWidgetState extends State<EventCardLargerWidget> {
  late EventCardLargerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventCardLargerModel());

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
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Align(
        alignment: AlignmentDirectional(-1.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: 200.0,
                ),
                decoration: BoxDecoration(),
                child: Text(
                  valueOrDefault<String>(
                    widget.eventsDoc?.name,
                    'Event',
                  ),
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                valueOrDefault<String>(
                  dateTimeFormat("MMMEd", widget.eventsDoc?.date),
                  'Date',
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                      color: widget.eventsDoc!.date! < functions.getDate()!
                          ? FlutterFlowTheme.of(context).error
                          : FlutterFlowTheme.of(context).tertiary,
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    ),
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Visibility(
                      visible: !widget.eventsDoc!.isEvent,
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).alternate,
                        ),
                        child: Checkbox(
                          value: _model.checkboxValue ??=
                              widget.eventsDoc!.completed,
                          onChanged: (newValue) async {
                            safeSetState(
                                () => _model.checkboxValue = newValue!);
                            if (newValue!) {
                              logFirebaseEvent(
                                  'EVENT_CARD_LARGER_Checkbox_mgezcvuc_ON_T');
                              logFirebaseEvent('Checkbox_backend_call');

                              await widget.eventsDoc!.reference
                                  .update(createCalendarEventRecordData(
                                completed: true,
                              ));
                            } else {
                              logFirebaseEvent(
                                  'EVENT_CARD_LARGER_Checkbox_mgezcvuc_ON_T');
                              logFirebaseEvent('Checkbox_backend_call');

                              await widget.eventsDoc!.reference
                                  .update(createCalendarEventRecordData(
                                completed: false,
                              ));
                            }
                          },
                          side: (FlutterFlowTheme.of(context).alternate != null)
                              ? BorderSide(
                                  width: 2,
                                  color:
                                      FlutterFlowTheme.of(context).alternate,
                                )
                              : null,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          checkColor: FlutterFlowTheme.of(context).info,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ),
      ),
    );
  }
}
