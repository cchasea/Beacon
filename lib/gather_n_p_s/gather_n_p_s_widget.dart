import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'gather_n_p_s_model.dart';
export 'gather_n_p_s_model.dart';

/// Feedback Collection Survey
class GatherNPSWidget extends StatefulWidget {
  const GatherNPSWidget({
    super.key,
    int? rating,
  }) : this.rating = rating ?? 0;

  final int rating;

  static String routeName = 'GatherNPS';
  static String routePath = '/GatherNPS';

  @override
  State<GatherNPSWidget> createState() => _GatherNPSWidgetState();
}

class _GatherNPSWidgetState extends State<GatherNPSWidget> {
  late GatherNPSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GatherNPSModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'GatherNPS'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 1.0, 10.0, 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/Beacon_Logo-removebg.png',
                            width: 150.0,
                            height: 93.6,
                            fit: BoxFit.cover,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => Text(
                              'Hello ${currentUserDisplayName},',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 21.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'On a scale from 0-10, how likely are you to recommend us to a friend or colleague?',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 21.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: 400.0,
                      height: 500.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFDFE7FF),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Wrap(
                                  spacing: 3.0,
                                  runSpacing: 1.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 0
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumberZero,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_numberZero_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 0;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 1
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber1,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number1_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 1;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 2
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber2,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number2_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 2;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 3
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber3,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number3_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 3;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 4
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber4,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number4_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 4;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 5
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber5,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number5_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 5;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 6
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber6,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number6_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 6;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 7
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber7,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number7_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 7;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 8
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber8,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number8_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 8;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 9
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber9,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number9_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 9;
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 47.0,
                                      fillColor: valueOrDefault<Color>(
                                        _model.rating >= 10
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        FFIcons.knumber10,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 34.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'GATHER_N_P_S_PAGE_number10_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_update_page_state');
                                        _model.rating = 10;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  'Please tell us more about your choice',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2C4A7A),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: true,
                                      enabled: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Type your feedback...',
                                        hintStyle: TextStyle(
                                          color: Color(0xFFB7C6EA),
                                        ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      maxLines: 6,
                                      maxLength: 250,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'GATHER_N_P_S_PAGE_SUBMIT_BTN_ON_TAP');
                                  if (_model.rating >= 0) {
                                    logFirebaseEvent('Button_backend_call');

                                    await NPSCollectionRecord.collection
                                        .doc()
                                        .set(createNPSCollectionRecordData(
                                          rating: _model.rating,
                                          feedback: _model.textController.text,
                                          timestamp: getCurrentTimestamp,
                                          userRef: currentUserReference,
                                          userEmail: '',
                                        ));
                                    logFirebaseEvent('Button_backend_call');

                                    await currentUserReference!
                                        .update(createUsersRecordData(
                                      hasTakenSurvey: true,
                                    ));
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Thanks for your feedback!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 5000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    logFirebaseEvent('Button_navigate_to');

                                    context.goNamed(HomePageWidget.routeName);
                                  } else {
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Please select a score before submitting.',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                  }
                                },
                                text: 'Submit',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF4169E1),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Powered by Beacon',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFA7B4D6),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(height: 25.0)),
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
    );
  }
}
