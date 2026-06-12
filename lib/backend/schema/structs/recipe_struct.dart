// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeStruct extends BaseStruct {
  RecipeStruct({
    int? id,
    String? name,
    String? info,
    int? cookTime,
    DateTime? createTime,
    DateTime? editTime,
    String? recipeTip,
    NutritionsStruct? nutritions,
    List<ProductStruct>? products,
    List<StepStruct>? cookingSteps,
    int? portions,
    Food? foodType,
    Hardness? hardType,
    String? pictureBase64,
    bool? isFavorite,
  })  : _id = id,
        _name = name,
        _info = info,
        _cookTime = cookTime,
        _createTime = createTime,
        _editTime = editTime,
        _recipeTip = recipeTip,
        _nutritions = nutritions,
        _products = products,
        _cookingSteps = cookingSteps,
        _portions = portions,
        _foodType = foodType,
        _hardType = hardType,
        _pictureBase64 = pictureBase64,
        _isFavorite = isFavorite;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  set info(String? val) => _info = val;

  bool hasInfo() => _info != null;

  // "cook_time" field.
  int? _cookTime;
  int get cookTime => _cookTime ?? 0;
  set cookTime(int? val) => _cookTime = val;

  void incrementCookTime(int amount) => cookTime = cookTime + amount;

  bool hasCookTime() => _cookTime != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  set createTime(DateTime? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "edit_time" field.
  DateTime? _editTime;
  DateTime? get editTime => _editTime;
  set editTime(DateTime? val) => _editTime = val;

  bool hasEditTime() => _editTime != null;

  // "recipe_tip" field.
  String? _recipeTip;
  String get recipeTip => _recipeTip ?? '';
  set recipeTip(String? val) => _recipeTip = val;

  bool hasRecipeTip() => _recipeTip != null;

  // "nutritions" field.
  NutritionsStruct? _nutritions;
  NutritionsStruct get nutritions => _nutritions ?? NutritionsStruct();
  set nutritions(NutritionsStruct? val) => _nutritions = val;

  void updateNutritions(Function(NutritionsStruct) updateFn) {
    updateFn(_nutritions ??= NutritionsStruct());
  }

  bool hasNutritions() => _nutritions != null;

  // "products" field.
  List<ProductStruct>? _products;
  List<ProductStruct> get products => _products ?? const [];
  set products(List<ProductStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  // "cooking_steps" field.
  List<StepStruct>? _cookingSteps;
  List<StepStruct> get cookingSteps => _cookingSteps ?? const [];
  set cookingSteps(List<StepStruct>? val) => _cookingSteps = val;

  void updateCookingSteps(Function(List<StepStruct>) updateFn) {
    updateFn(_cookingSteps ??= []);
  }

  bool hasCookingSteps() => _cookingSteps != null;

  // "portions" field.
  int? _portions;
  int get portions => _portions ?? 0;
  set portions(int? val) => _portions = val;

  void incrementPortions(int amount) => portions = portions + amount;

  bool hasPortions() => _portions != null;

  // "food_type" field.
  Food? _foodType;
  Food? get foodType => _foodType;
  set foodType(Food? val) => _foodType = val;

  bool hasFoodType() => _foodType != null;

  // "hard_type" field.
  Hardness? _hardType;
  Hardness? get hardType => _hardType;
  set hardType(Hardness? val) => _hardType = val;

  bool hasHardType() => _hardType != null;

  // "pictureBase64" field.
  String? _pictureBase64;
  String get pictureBase64 => _pictureBase64 ?? '';
  set pictureBase64(String? val) => _pictureBase64 = val;

  bool hasPictureBase64() => _pictureBase64 != null;

  // "isFavorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  set isFavorite(bool? val) => _isFavorite = val;

  bool hasIsFavorite() => _isFavorite != null;

  static RecipeStruct fromMap(Map<String, dynamic> data) => RecipeStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        info: data['info'] as String?,
        cookTime: castToType<int>(data['cook_time']),
        createTime: data['create_time'] as DateTime?,
        editTime: data['edit_time'] as DateTime?,
        recipeTip: data['recipe_tip'] as String?,
        nutritions: data['nutritions'] is NutritionsStruct
            ? data['nutritions']
            : NutritionsStruct.maybeFromMap(data['nutritions']),
        products: getStructList(
          data['products'],
          ProductStruct.fromMap,
        ),
        cookingSteps: getStructList(
          data['cooking_steps'],
          StepStruct.fromMap,
        ),
        portions: castToType<int>(data['portions']),
        foodType: data['food_type'] is Food
            ? data['food_type']
            : deserializeEnum<Food>(data['food_type']),
        hardType: data['hard_type'] is Hardness
            ? data['hard_type']
            : deserializeEnum<Hardness>(data['hard_type']),
        pictureBase64: data['pictureBase64'] as String?,
        isFavorite: data['isFavorite'] as bool?,
      );

  static RecipeStruct? maybeFromMap(dynamic data) =>
      data is Map ? RecipeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'info': _info,
        'cook_time': _cookTime,
        'create_time': _createTime,
        'edit_time': _editTime,
        'recipe_tip': _recipeTip,
        'nutritions': _nutritions?.toMap(),
        'products': _products?.map((e) => e.toMap()).toList(),
        'cooking_steps': _cookingSteps?.map((e) => e.toMap()).toList(),
        'portions': _portions,
        'food_type': _foodType?.serialize(),
        'hard_type': _hardType?.serialize(),
        'pictureBase64': _pictureBase64,
        'isFavorite': _isFavorite,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'info': serializeParam(
          _info,
          ParamType.String,
        ),
        'cook_time': serializeParam(
          _cookTime,
          ParamType.int,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.DateTime,
        ),
        'edit_time': serializeParam(
          _editTime,
          ParamType.DateTime,
        ),
        'recipe_tip': serializeParam(
          _recipeTip,
          ParamType.String,
        ),
        'nutritions': serializeParam(
          _nutritions,
          ParamType.DataStruct,
        ),
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
        'cooking_steps': serializeParam(
          _cookingSteps,
          ParamType.DataStruct,
          isList: true,
        ),
        'portions': serializeParam(
          _portions,
          ParamType.int,
        ),
        'food_type': serializeParam(
          _foodType,
          ParamType.Enum,
        ),
        'hard_type': serializeParam(
          _hardType,
          ParamType.Enum,
        ),
        'pictureBase64': serializeParam(
          _pictureBase64,
          ParamType.String,
        ),
        'isFavorite': serializeParam(
          _isFavorite,
          ParamType.bool,
        ),
      }.withoutNulls;

  static RecipeStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecipeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        info: deserializeParam(
          data['info'],
          ParamType.String,
          false,
        ),
        cookTime: deserializeParam(
          data['cook_time'],
          ParamType.int,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.DateTime,
          false,
        ),
        editTime: deserializeParam(
          data['edit_time'],
          ParamType.DateTime,
          false,
        ),
        recipeTip: deserializeParam(
          data['recipe_tip'],
          ParamType.String,
          false,
        ),
        nutritions: deserializeStructParam(
          data['nutritions'],
          ParamType.DataStruct,
          false,
          structBuilder: NutritionsStruct.fromSerializableMap,
        ),
        products: deserializeStructParam<ProductStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
        cookingSteps: deserializeStructParam<StepStruct>(
          data['cooking_steps'],
          ParamType.DataStruct,
          true,
          structBuilder: StepStruct.fromSerializableMap,
        ),
        portions: deserializeParam(
          data['portions'],
          ParamType.int,
          false,
        ),
        foodType: deserializeParam<Food>(
          data['food_type'],
          ParamType.Enum,
          false,
        ),
        hardType: deserializeParam<Hardness>(
          data['hard_type'],
          ParamType.Enum,
          false,
        ),
        pictureBase64: deserializeParam(
          data['pictureBase64'],
          ParamType.String,
          false,
        ),
        isFavorite: deserializeParam(
          data['isFavorite'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'RecipeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecipeStruct &&
        id == other.id &&
        name == other.name &&
        info == other.info &&
        cookTime == other.cookTime &&
        createTime == other.createTime &&
        editTime == other.editTime &&
        recipeTip == other.recipeTip &&
        nutritions == other.nutritions &&
        listEquality.equals(products, other.products) &&
        listEquality.equals(cookingSteps, other.cookingSteps) &&
        portions == other.portions &&
        foodType == other.foodType &&
        hardType == other.hardType &&
        pictureBase64 == other.pictureBase64 &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        info,
        cookTime,
        createTime,
        editTime,
        recipeTip,
        nutritions,
        products,
        cookingSteps,
        portions,
        foodType,
        hardType,
        pictureBase64,
        isFavorite
      ]);
}

RecipeStruct createRecipeStruct({
  int? id,
  String? name,
  String? info,
  int? cookTime,
  DateTime? createTime,
  DateTime? editTime,
  String? recipeTip,
  NutritionsStruct? nutritions,
  int? portions,
  Food? foodType,
  Hardness? hardType,
  String? pictureBase64,
  bool? isFavorite,
}) =>
    RecipeStruct(
      id: id,
      name: name,
      info: info,
      cookTime: cookTime,
      createTime: createTime,
      editTime: editTime,
      recipeTip: recipeTip,
      nutritions: nutritions ?? NutritionsStruct(),
      portions: portions,
      foodType: foodType,
      hardType: hardType,
      pictureBase64: pictureBase64,
      isFavorite: isFavorite,
    );
