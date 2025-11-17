import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

/// Get's today's date
DateTime? getDate() {
// Get just the date for today
  return DateTime.now().subtract(Duration(
      hours: DateTime.now().hour,
      minutes: DateTime.now().minute,
      seconds: DateTime.now().second,
      milliseconds: DateTime.now().millisecond,
      microseconds: DateTime.now().microsecond));
}

DateTime? getStartOfWeek() {
  // Gets only the starting date of the current week
  DateTime now = DateTime.now();
  int daysSinceMonday = now.weekday - DateTime.monday;
  return now.subtract(Duration(days: daysSinceMonday));
}

DateTime? getEndOfWeek() {
  // Gets the date of the end of the current week
  DateTime now = DateTime.now();
  int daysUntilSunday = DateTime.sunday - now.weekday;
  return now.add(Duration(days: daysUntilSunday));
}
