// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:image/image.dart' as img;

Future<String?> imageToBase64(
  int maxWidth,
  int maxHeight,
  int quality,
) async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.image,
  );

  if (result == null || result.files.single.path == null) {
    return null;
  }

  final bytes = await File(result.files.single.path!).readAsBytes();

  final original = img.decodeImage(bytes);

  if (original == null) {
    return null;
  }

  final ratioX = maxWidth / original.width;
  final ratioY = maxHeight / original.height;

  final ratio = ratioX < ratioY ? ratioX : ratioY;

  final resized = ratio < 1
      ? img.copyResize(
          original,
          width: (original.width * ratio).round(),
          height: (original.height * ratio).round(),
        )
      : original;

  final jpgBytes = img.encodeJpg(
    resized,
    quality: quality.clamp(1, 100),
  );

  return base64Encode(jpgBytes);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
