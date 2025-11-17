// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> calculateNPS() async {
  // Add your function code here!
  final snap =
      await FirebaseFirestore.instance.collection('NPS_collection').get();
  if (snap.docs.isEmpty) return 0;
  final ratings =
      snap.docs.map((d) => (d.data()['rating'] as num).toInt()).toList();
  final detractors = ratings.where((r) => r <= 6).length;
  final promoters = ratings.where((r) => r >= 9).length;
  final n = ratings.length;
  final nps = ((promoters / n) - (detractors / n)) * 100;
  return nps.round();
}
