import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/event_card_larger_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_PAGE_PAGE_HomePage_ON_INIT_STATE');
      logFirebaseEvent('HomePage_custom_action');
      await actions.applyRemoteConfigTheme(
        context,
      );
      logFirebaseEvent('HomePage_backend_call');
      _model.userRef = await UsersRecord.getDocumentOnce(currentUserReference!);
      if ((_model.didIncrement == false) &&
          (valueOrDefault<bool>(currentUserDocument?.hasTakenSurvey, false) ==
              false) &&
          (valueOrDefault(currentUserDocument?.appOpenCount, 0) >= 3)) {
        logFirebaseEvent('HomePage_backend_call');

        await currentUserReference!.update({
          ...mapToFirestore(
            {
              'appOpenCount': FieldValue.increment(1),
            },
          ),
        });
        logFirebaseEvent('HomePage_update_page_state');
        _model.didIncrement = true;
        safeSetState(() {});
        logFirebaseEvent('HomePage_navigate_to');

        context.goNamed(
          GatherNPSWidget.routeName,
          queryParameters: {
            'rating': serializeParam(
              0,
              ParamType.int,
            ),
          }.withoutNulls,
        );
      } else {
        logFirebaseEvent('HomePage_update_page_state');
        _model.didIncrement = true;
        safeSetState(() {});
      }
    });

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Home',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.roboto(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 75.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: FlutterFlowAdBanner(
                  height: 75.0,
                  showsTestAd: false,
                  androidAdUnitID: 'ca-app-pub-8677833989349841~8497302657',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 30.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'Welcome, ${valueOrDefault(currentUserDocument?.username, '')}',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 400.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: 400.0,
                                            color: Color(0x00000000),
                                            child: ExpandableNotifier(
                                              controller: _model
                                                  .expandableExpandableController1,
                                              child: ExpandablePanel(
                                                header: Text(
                                                  'Today:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                                collapsed: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [],
                                                ),
                                                expanded: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 24.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        StreamBuilder<
                                                            List<
                                                                CalendarEventRecord>>(
                                                          stream:
                                                              queryCalendarEventRecord(
                                                            queryBuilder:
                                                                (calendarEventRecord) =>
                                                                    calendarEventRecord
                                                                        .where(
                                                                          'User',
                                                                          isEqualTo:
                                                                              currentUserReference,
                                                                        )
                                                                        .where(
                                                                          'Date',
                                                                          isGreaterThan:
                                                                              functions.getJustBeforeToday(),
                                                                        )
                                                                        .where(
                                                                          'Date',
                                                                          isLessThan:
                                                                              functions.getStartOfTomorrow(),
                                                                        ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<CalendarEventRecord>
                                                                dueTodayListCalendarEventRecordList =
                                                                snapshot.data!;

                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  dueTodayListCalendarEventRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  dueTodayListIndex) {
                                                                final dueTodayListCalendarEventRecord =
                                                                    dueTodayListCalendarEventRecordList[
                                                                        dueTodayListIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'HOME_PAGE_PAGE_Container_cb6iuv4j_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'event_cardLarger_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        EventDetailsWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'eventDoc':
                                                                              serializeParam(
                                                                            dueTodayListCalendarEventRecord,
                                                                            ParamType.Document,
                                                                          ),
                                                                        }.withoutNulls,
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          'eventDoc':
                                                                              dueTodayListCalendarEventRecord,
                                                                        },
                                                                      );
                                                                    },
                                                                    child:
                                                                        EventCardLargerWidget(
                                                                      key: Key(
                                                                          'Keycb6_${dueTodayListIndex}_of_${dueTodayListCalendarEventRecordList.length}'),
                                                                      eventsDoc:
                                                                          dueTodayListCalendarEventRecord,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                theme: ExpandableThemeData(
                                                  tapHeaderToExpand: true,
                                                  tapBodyToExpand: false,
                                                  tapBodyToCollapse: false,
                                                  headerAlignment:
                                                      ExpandablePanelHeaderAlignment
                                                          .center,
                                                  hasIcon: true,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 400.0,
                                decoration: BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: 400.0,
                                        color: Color(0x00000000),
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController2,
                                          child: ExpandablePanel(
                                            header: Text(
                                              'Upcoming:',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontStyle,
                                                      ),
                                            ),
                                            collapsed: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [],
                                            ),
                                            expanded: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 24.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    StreamBuilder<
                                                        List<
                                                            CalendarEventRecord>>(
                                                      stream:
                                                          queryCalendarEventRecord(
                                                        queryBuilder:
                                                            (calendarEventRecord) =>
                                                                calendarEventRecord
                                                                    .where(
                                                                      'User',
                                                                      isEqualTo:
                                                                          currentUserReference,
                                                                    )
                                                                    .where(
                                                                      'Date',
                                                                      isGreaterThan:
                                                                          functions
                                                                              .getJustBeforeTomorrow(),
                                                                    ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<CalendarEventRecord>
                                                            dueUpcomingListCalendarEventRecordList =
                                                            snapshot.data!;

                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              dueUpcomingListCalendarEventRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              dueUpcomingListIndex) {
                                                            final dueUpcomingListCalendarEventRecord =
                                                                dueUpcomingListCalendarEventRecordList[
                                                                    dueUpcomingListIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'HOME_PAGE_PAGE_Container_e19coq36_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'event_cardLarger_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    EventDetailsWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'eventDoc':
                                                                          serializeParam(
                                                                        dueUpcomingListCalendarEventRecord,
                                                                        ParamType
                                                                            .Document,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      'eventDoc':
                                                                          dueUpcomingListCalendarEventRecord,
                                                                    },
                                                                  );
                                                                },
                                                                child:
                                                                    EventCardLargerWidget(
                                                                  key: Key(
                                                                      'Keye19_${dueUpcomingListIndex}_of_${dueUpcomingListCalendarEventRecordList.length}'),
                                                                  eventsDoc:
                                                                      dueUpcomingListCalendarEventRecord,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 400.0,
                                      decoration: BoxDecoration(),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 400.0,
                                              color: Color(0x00000000),
                                              child: ExpandableNotifier(
                                                controller: _model
                                                    .expandableExpandableController3,
                                                child: ExpandablePanel(
                                                  header: Text(
                                                    'Overdue:',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .roboto(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.black,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  collapsed: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [],
                                                  ),
                                                  expanded: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 24.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          StreamBuilder<
                                                              List<
                                                                  CalendarEventRecord>>(
                                                            stream:
                                                                queryCalendarEventRecord(
                                                              queryBuilder:
                                                                  (calendarEventRecord) =>
                                                                      calendarEventRecord
                                                                          .where(
                                                                            'User',
                                                                            isEqualTo:
                                                                                currentUserReference,
                                                                          )
                                                                          .where(
                                                                            'Date',
                                                                            isLessThan:
                                                                                functions.getStartOfToday(),
                                                                          )
                                                                          .where(
                                                                            'isEvent',
                                                                            isEqualTo:
                                                                                false,
                                                                          )
                                                                          .where(
                                                                            'Completed',
                                                                            isEqualTo:
                                                                                false,
                                                                          ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<CalendarEventRecord>
                                                                  overdueListCalendarEventRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    overdueListCalendarEventRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        overdueListIndex) {
                                                                  final overdueListCalendarEventRecord =
                                                                      overdueListCalendarEventRecordList[
                                                                          overdueListIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'HOME_PAGE_PAGE_Container_hpq06mtt_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'event_cardLarger_navigate_to');

                                                                        context
                                                                            .pushNamed(
                                                                          EventDetailsWidget
                                                                              .routeName,
                                                                          queryParameters:
                                                                              {
                                                                            'eventDoc':
                                                                                serializeParam(
                                                                              overdueListCalendarEventRecord,
                                                                              ParamType.Document,
                                                                            ),
                                                                          }.withoutNulls,
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            'eventDoc':
                                                                                overdueListCalendarEventRecord,
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          EventCardLargerWidget(
                                                                        key: Key(
                                                                            'Keyhpq_${overdueListIndex}_of_${overdueListCalendarEventRecordList.length}'),
                                                                        eventsDoc:
                                                                            overdueListCalendarEventRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  theme: ExpandableThemeData(
                                                    tapHeaderToExpand: true,
                                                    tapBodyToExpand: false,
                                                    tapBodyToCollapse: false,
                                                    headerAlignment:
                                                        ExpandablePanelHeaderAlignment
                                                            .center,
                                                    hasIcon: true,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
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
    );
  }
}
