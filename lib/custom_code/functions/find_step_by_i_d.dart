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

StepStruct? findStepByID(
  List<StepStruct>? allSteps,
  int? queueid,
) {
// find step by queue_id
  return allSteps?.firstWhere((step) => step.queueId == queueid,
      orElse: null); // firstWhere((step) => step.queue_id == queueid);
}
