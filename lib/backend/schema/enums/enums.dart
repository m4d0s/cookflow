import 'package:collection/collection.dart';

enum Food {
  breakfast,
  lunch,
  moonfood,
  dinner,
  dessert,
  snack,
  baking,
  all,
}

enum Hardness {
  easy,
  medium,
  hard,
  all,
}

enum Picture {
  local,
  network,
}

enum UploadState {
  recipe,
  step,
}

enum Quantity {
  g,
  ml,
  pi,
  l,
  kg,
}

enum Textfield {
  ghost,
  empty,
  filled,
  error,
}

enum ProgressStep {
  done,
  ongoing,
  future,
}

enum MealTarget {
  extraloss,
  lessloss,
  average,
  lessget,
  extraget,
}

enum MealAction {
  low,
  lessaverage,
  average,
  moreaverage,
  high,
}

enum HumanSex {
  male,
  female,
}

enum Structs {
  recipe,
  step,
  product,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Food):
      return Food.values.deserialize(value) as T?;
    case (Hardness):
      return Hardness.values.deserialize(value) as T?;
    case (Picture):
      return Picture.values.deserialize(value) as T?;
    case (UploadState):
      return UploadState.values.deserialize(value) as T?;
    case (Quantity):
      return Quantity.values.deserialize(value) as T?;
    case (Textfield):
      return Textfield.values.deserialize(value) as T?;
    case (ProgressStep):
      return ProgressStep.values.deserialize(value) as T?;
    case (MealTarget):
      return MealTarget.values.deserialize(value) as T?;
    case (MealAction):
      return MealAction.values.deserialize(value) as T?;
    case (HumanSex):
      return HumanSex.values.deserialize(value) as T?;
    case (Structs):
      return Structs.values.deserialize(value) as T?;
    default:
      return null;
  }
}
