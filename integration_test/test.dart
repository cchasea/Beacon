import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:beacon/flutter_flow/flutter_flow_drop_down.dart';
import 'package:beacon/flutter_flow/flutter_flow_icon_button.dart';
import 'package:beacon/flutter_flow/flutter_flow_widgets.dart';
import 'package:beacon/flutter_flow/flutter_flow_theme.dart';
import 'package:beacon/index.dart';
import 'package:beacon/main.dart';
import 'package:beacon/flutter_flow/flutter_flow_util.dart';

import 'package:beacon/backend/firebase/firebase_config.dart';
import 'package:beacon/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
  });

  group('US4: Golden Path', () {
    testWidgets('Successful Event Creation', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'testingemail2@gmail.com', password: 'testing');
      await tester.pumpWidget(MyApp(
        entryPage: CalanderWidget(),
      ));
      await GoogleFonts.pendingFonts();

      await tester.tap(find.byKey(const ValueKey('CalendarAdd')));
      await tester.pumpAndSettle(const Duration(milliseconds: 5000));
      await tester.enterText(
          find.byKey(const ValueKey('NameText')), 'New Event');
      await tester.tap(find.text('16'));
      await tester.tap(find.byKey(const ValueKey('EventAdd')));
      await tester.pumpAndSettle(const Duration(milliseconds: 5000));
      expect(find.text('New Event'), findsOneWidget);
    });

    testWidgets('Unsuccessful Event Creation', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'testingemail2@gmail.com', password: 'testing');
      await tester.pumpWidget(MyApp(
        entryPage: CalanderWidget(),
      ));
      await GoogleFonts.pendingFonts();

      await tester.tap(find.byType(CalendarAdd));
      await tester.pumpAndSettle(const Duration(milliseconds: 5000));
      await tester.tap(find.byKey(const ValueKey('EventAdd')));
      await tester.pumpAndSettle(const Duration(milliseconds: 5000));
      expect(find.text('*Please Enter A Title Here*'), findsOneWidget);
    });

    testWidgets('View Event Details', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'testingemail2@gmail.com', password: 'testing');
      await tester.pumpWidget(MyApp(
        entryPage: CalanderWidget(),
      ));
      await GoogleFonts.pendingFonts();

      await tester.tap(find.text('New Event'));
      await tester.pumpAndSettle(const Duration(milliseconds: 5000));
      expect(find.text('Event Details'), findsOneWidget);
    });

    testWidgets('Edit Event Details', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'testingemail2@gmail.com', password: 'testing');
      await tester.pumpWidget(MyApp(
        entryPage: CalanderWidget(),
      ));
      await GoogleFonts.pendingFonts();

      await tester.tap(find.text('New Event'));
      await tester.pumpAndSettle(const Duration(milliseconds: 5000));
      await tester.tap(find.byKey(const ValueKey('EditToggle')));
      await tester.enterText(
          find.byKey(const ValueKey('EditName')), 'Edited New Event');
      await tester.tap(find.byKey(const ValueKey('EditShared')));
      await tester.enterText(
          find.byKey(const ValueKey('EditDetails')), 'Edited Details');
      await tester.tap(find.byKey(const ValueKey('EditUpdate')));
      await tester.pumpAndSettle(const Duration(milliseconds: 5000));
      expect(find.text('Edited New Event'), findsOneWidget);
    });
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }
  // Web-specific error when interacting with TextInputType.emailAddress
  if (error.contains('setSelectionRange') &&
      error.contains('HTMLInputElement')) {
    return true;
  }

  return false;
}
