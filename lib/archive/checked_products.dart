// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_util.dart';
// Imports other custom actions
// Imports custom functions
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future checkedProducts() async {
  FFAppState().CheckedPositions = FFAppState()
      .RecipeSelect
      .products
      .where((p) => p.isChecked == true)
      .length;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
