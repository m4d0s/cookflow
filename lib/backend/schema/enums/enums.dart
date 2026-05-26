import 'package:collection/collection.dart';

enum Food {
  breakfast,
  lunch,
  moonfood,
  dinner,
  dessert,
  snack,
  baking,
}

enum Hardness {
  easy,
  medium,
  hard,
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
  kg,
  sp,
  l,
  ml,
  lsp,
  pi,
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
    default:
      return null;
  }
}
