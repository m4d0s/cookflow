import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

String dayDetect012(DateTime timestamp) {
  final now = DateTime.now();
  final yesterday = now.subtract(Duration(days: 1));

  if (timestamp.year == now.year &&
      timestamp.month == now.month &&
      timestamp.day == now.day) {
    return 'Сегодня'; // Today
  } else if (timestamp.year == yesterday.year &&
      timestamp.month == yesterday.month &&
      timestamp.day == yesterday.day) {
    return 'Вчера'; // Yesterday
  } else {
    final DateFormat formatter = DateFormat('EEEE, d MMMM', 'ru');
    return formatter.format(timestamp);
  }
}
