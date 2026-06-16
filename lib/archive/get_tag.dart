// Automatic FlutterFlow imports
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
// Imports other custom actions
// Imports custom functions
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String getTag(Tags tag) {
  switch (tag) {
    case Tags.food:
      final ctag = FFAppState().RecipeSelect.foodType;
      final tagf =
          FFAppState().CategoryList.firstWhere((e) => e.category == ctag);
      return tagf.name;
    default: //Tags.hard
      final ctag = FFAppState().RecipeSelect.hardType;
      final tagf = FFAppState().HardList.firstWhere((e) => e.difficult == ctag);
      return tagf.name;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
