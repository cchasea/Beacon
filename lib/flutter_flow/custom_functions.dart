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

DateTime getStartOfToday() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day);
}

DateTime getStartOfTomorrow() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day + 1);
}

DateTime getJustBeforeToday() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day - 1, 23, 59, 59, 999);
}

DateTime getJustBeforeTomorrow() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day, 23, 59, 59, 999);
}

DateTime getJustBeforeDate(DateTime date) {
  return DateTime(date.year, date.month, date.day - 1, 23, 59, 59, 999);
}

DateTime getNextDay(DateTime date) {
  return DateTime(date.year, date.month, date.day + 1);
}
