import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _DailyList = (await secureStorage.getStringList('ff_DailyList'))
              ?.map((x) {
                try {
                  return DailyPlanStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DailyList;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_DailyGoal') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_DailyGoal') ?? '{}';
          _DailyGoal =
              NutritionsStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _RecipeList = (await secureStorage.getStringList('ff_RecipeList'))
              ?.map((x) {
                try {
                  return RecipeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _RecipeList;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_PeopleStat') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_PeopleStat') ?? '{}';
          _PeopleStat =
              PeopleParamStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _CategoryList = (await secureStorage.getStringList('ff_CategoryList'))
              ?.map((x) {
                try {
                  return FoodCategoryStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _CategoryList;
    });
    await _safeInitAsync(() async {
      _HardList = (await secureStorage.getStringList('ff_HardList'))
              ?.map((x) {
                try {
                  return FoodDifficultyStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _HardList;
    });
    await _safeInitAsync(() async {
      _QuantityList = (await secureStorage.getStringList('ff_QuantityList'))
              ?.map((x) {
                try {
                  return FoodQuantityStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _QuantityList;
    });
    await _safeInitAsync(() async {
      _ActionList = (await secureStorage.getStringList('ff_ActionList'))
              ?.map((x) {
                try {
                  return PeopleActionStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ActionList;
    });
    await _safeInitAsync(() async {
      _TargetList = (await secureStorage.getStringList('ff_TargetList'))
              ?.map((x) {
                try {
                  return PeopleTargetStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _TargetList;
    });
    await _safeInitAsync(() async {
      _SexList = (await secureStorage.getStringList('ff_SexList'))
              ?.map((x) {
                try {
                  return PeopleSexStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _SexList;
    });
    await _safeInitAsync(() async {
      _ProductDB = (await secureStorage.getStringList('ff_ProductDB'))
              ?.map((x) {
                try {
                  return ProductStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ProductDB;
    });
    await _safeInitAsync(() async {
      _LastProductId =
          await secureStorage.getInt('ff_LastProductId') ?? _LastProductId;
    });
    await _safeInitAsync(() async {
      _LastRecipeId =
          await secureStorage.getInt('ff_LastRecipeId') ?? _LastRecipeId;
    });
    await _safeInitAsync(() async {
      _LastBuyId = await secureStorage.getInt('ff_LastBuyId') ?? _LastBuyId;
    });
    await _safeInitAsync(() async {
      _LastStepId = await secureStorage.getInt('ff_LastStepId') ?? _LastStepId;
    });
    await _safeInitAsync(() async {
      _BuyList = (await secureStorage.getStringList('ff_BuyList'))
              ?.map((x) {
                try {
                  return ShopItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _BuyList;
    });
    await _safeInitAsync(() async {
      _DarkMode = await secureStorage.read(key: 'ff_DarkMode') != null
          ? deserializeEnum<AppTheme>(
              (await secureStorage.getString('ff_DarkMode')))
          : _DarkMode;
    });
    await _safeInitAsync(() async {
      _AutoNutrition =
          await secureStorage.getBool('ff_AutoNutrition') ?? _AutoNutrition;
    });
    await _safeInitAsync(() async {
      _ProductCategoryList =
          (await secureStorage.getStringList('ff_ProductCategoryList'))
                  ?.map((x) {
                    try {
                      return ProductCategoryStruct.fromSerializableMap(
                          jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _ProductCategoryList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<DailyPlanStruct> _DailyList = [];
  List<DailyPlanStruct> get DailyList => _DailyList;
  set DailyList(List<DailyPlanStruct> value) {
    _DailyList = value;
    secureStorage.setStringList(
        'ff_DailyList', value.map((x) => x.serialize()).toList());
  }

  void deleteDailyList() {
    secureStorage.delete(key: 'ff_DailyList');
  }

  void addToDailyList(DailyPlanStruct value) {
    DailyList.add(value);
    secureStorage.setStringList(
        'ff_DailyList', _DailyList.map((x) => x.serialize()).toList());
  }

  void removeFromDailyList(DailyPlanStruct value) {
    DailyList.remove(value);
    secureStorage.setStringList(
        'ff_DailyList', _DailyList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDailyList(int index) {
    DailyList.removeAt(index);
    secureStorage.setStringList(
        'ff_DailyList', _DailyList.map((x) => x.serialize()).toList());
  }

  void updateDailyListAtIndex(
    int index,
    DailyPlanStruct Function(DailyPlanStruct) updateFn,
  ) {
    DailyList[index] = updateFn(_DailyList[index]);
    secureStorage.setStringList(
        'ff_DailyList', _DailyList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDailyList(int index, DailyPlanStruct value) {
    DailyList.insert(index, value);
    secureStorage.setStringList(
        'ff_DailyList', _DailyList.map((x) => x.serialize()).toList());
  }

  DailyPlanStruct _DailySelect = DailyPlanStruct();
  DailyPlanStruct get DailySelect => _DailySelect;
  set DailySelect(DailyPlanStruct value) {
    _DailySelect = value;
  }

  void updateDailySelectStruct(Function(DailyPlanStruct) updateFn) {
    updateFn(_DailySelect);
  }

  NutritionsStruct _DailyGoal = NutritionsStruct.fromSerializableMap(jsonDecode(
      '{\"calories\":\"2350.0\",\"protein\":\"160.0\",\"fats\":\"48.0\",\"carbs\":\"320.0\"}'));
  NutritionsStruct get DailyGoal => _DailyGoal;
  set DailyGoal(NutritionsStruct value) {
    _DailyGoal = value;
    secureStorage.setString('ff_DailyGoal', value.serialize());
  }

  void deleteDailyGoal() {
    secureStorage.delete(key: 'ff_DailyGoal');
  }

  void updateDailyGoalStruct(Function(NutritionsStruct) updateFn) {
    updateFn(_DailyGoal);
    secureStorage.setString('ff_DailyGoal', _DailyGoal.serialize());
  }

  List<RecipeStruct> _RecipeList = [];
  List<RecipeStruct> get RecipeList => _RecipeList;
  set RecipeList(List<RecipeStruct> value) {
    _RecipeList = value;
    secureStorage.setStringList(
        'ff_RecipeList', value.map((x) => x.serialize()).toList());
  }

  void deleteRecipeList() {
    secureStorage.delete(key: 'ff_RecipeList');
  }

  void addToRecipeList(RecipeStruct value) {
    RecipeList.add(value);
    secureStorage.setStringList(
        'ff_RecipeList', _RecipeList.map((x) => x.serialize()).toList());
  }

  void removeFromRecipeList(RecipeStruct value) {
    RecipeList.remove(value);
    secureStorage.setStringList(
        'ff_RecipeList', _RecipeList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromRecipeList(int index) {
    RecipeList.removeAt(index);
    secureStorage.setStringList(
        'ff_RecipeList', _RecipeList.map((x) => x.serialize()).toList());
  }

  void updateRecipeListAtIndex(
    int index,
    RecipeStruct Function(RecipeStruct) updateFn,
  ) {
    RecipeList[index] = updateFn(_RecipeList[index]);
    secureStorage.setStringList(
        'ff_RecipeList', _RecipeList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInRecipeList(int index, RecipeStruct value) {
    RecipeList.insert(index, value);
    secureStorage.setStringList(
        'ff_RecipeList', _RecipeList.map((x) => x.serialize()).toList());
  }

  RecipeStruct _RecipeSelect = RecipeStruct();
  RecipeStruct get RecipeSelect => _RecipeSelect;
  set RecipeSelect(RecipeStruct value) {
    _RecipeSelect = value;
  }

  void updateRecipeSelectStruct(Function(RecipeStruct) updateFn) {
    updateFn(_RecipeSelect);
  }

  PeopleParamStruct _PeopleStat = PeopleParamStruct.fromSerializableMap(jsonDecode(
      '{\"Weight\":\"30\",\"Height\":\"180\",\"Age\":\"80\",\"Activity\":\"average\",\"Target\":\"average\",\"Sex\":\"male\"}'));
  PeopleParamStruct get PeopleStat => _PeopleStat;
  set PeopleStat(PeopleParamStruct value) {
    _PeopleStat = value;
    secureStorage.setString('ff_PeopleStat', value.serialize());
  }

  void deletePeopleStat() {
    secureStorage.delete(key: 'ff_PeopleStat');
  }

  void updatePeopleStatStruct(Function(PeopleParamStruct) updateFn) {
    updateFn(_PeopleStat);
    secureStorage.setString('ff_PeopleStat', _PeopleStat.serialize());
  }

  List<FoodCategoryStruct> _CategoryList = [
    FoodCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Завтрак\",\"category\":\"breakfast\"}')),
    FoodCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Обед\",\"category\":\"lunch\"}')),
    FoodCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Полдник\",\"category\":\"moonfood\"}')),
    FoodCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Ужин\",\"category\":\"dinner\"}')),
    FoodCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Десерт\",\"category\":\"dessert\"}')),
    FoodCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Закуска\",\"category\":\"snack\"}')),
    FoodCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Выпечка\",\"category\":\"baking\"}')),
    FoodCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Все\",\"category\":\"all\"}'))
  ];
  List<FoodCategoryStruct> get CategoryList => _CategoryList;
  set CategoryList(List<FoodCategoryStruct> value) {
    _CategoryList = value;
    secureStorage.setStringList(
        'ff_CategoryList', value.map((x) => x.serialize()).toList());
  }

  void deleteCategoryList() {
    secureStorage.delete(key: 'ff_CategoryList');
  }

  void addToCategoryList(FoodCategoryStruct value) {
    CategoryList.add(value);
    secureStorage.setStringList(
        'ff_CategoryList', _CategoryList.map((x) => x.serialize()).toList());
  }

  void removeFromCategoryList(FoodCategoryStruct value) {
    CategoryList.remove(value);
    secureStorage.setStringList(
        'ff_CategoryList', _CategoryList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCategoryList(int index) {
    CategoryList.removeAt(index);
    secureStorage.setStringList(
        'ff_CategoryList', _CategoryList.map((x) => x.serialize()).toList());
  }

  void updateCategoryListAtIndex(
    int index,
    FoodCategoryStruct Function(FoodCategoryStruct) updateFn,
  ) {
    CategoryList[index] = updateFn(_CategoryList[index]);
    secureStorage.setStringList(
        'ff_CategoryList', _CategoryList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCategoryList(int index, FoodCategoryStruct value) {
    CategoryList.insert(index, value);
    secureStorage.setStringList(
        'ff_CategoryList', _CategoryList.map((x) => x.serialize()).toList());
  }

  Food? _CategorySelect = Food.all;
  Food? get CategorySelect => _CategorySelect;
  set CategorySelect(Food? value) {
    _CategorySelect = value;
  }

  List<FoodDifficultyStruct> _HardList = [
    FoodDifficultyStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Лёгкий\",\"difficult\":\"easy\"}')),
    FoodDifficultyStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Средний\",\"difficult\":\"medium\"}')),
    FoodDifficultyStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Сложный\",\"difficult\":\"hard\"}')),
    FoodDifficultyStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Все\",\"difficult\":\"all\"}'))
  ];
  List<FoodDifficultyStruct> get HardList => _HardList;
  set HardList(List<FoodDifficultyStruct> value) {
    _HardList = value;
    secureStorage.setStringList(
        'ff_HardList', value.map((x) => x.serialize()).toList());
  }

  void deleteHardList() {
    secureStorage.delete(key: 'ff_HardList');
  }

  void addToHardList(FoodDifficultyStruct value) {
    HardList.add(value);
    secureStorage.setStringList(
        'ff_HardList', _HardList.map((x) => x.serialize()).toList());
  }

  void removeFromHardList(FoodDifficultyStruct value) {
    HardList.remove(value);
    secureStorage.setStringList(
        'ff_HardList', _HardList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromHardList(int index) {
    HardList.removeAt(index);
    secureStorage.setStringList(
        'ff_HardList', _HardList.map((x) => x.serialize()).toList());
  }

  void updateHardListAtIndex(
    int index,
    FoodDifficultyStruct Function(FoodDifficultyStruct) updateFn,
  ) {
    HardList[index] = updateFn(_HardList[index]);
    secureStorage.setStringList(
        'ff_HardList', _HardList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInHardList(int index, FoodDifficultyStruct value) {
    HardList.insert(index, value);
    secureStorage.setStringList(
        'ff_HardList', _HardList.map((x) => x.serialize()).toList());
  }

  Hardness? _HardSelect = Hardness.all;
  Hardness? get HardSelect => _HardSelect;
  set HardSelect(Hardness? value) {
    _HardSelect = value;
  }

  List<FoodQuantityStruct> _QuantityList = [
    FoodQuantityStruct.fromSerializableMap(jsonDecode(
        '{\"divider\":\"100\",\"multiplier\":\"1\",\"quantity\":\"г\",\"altquantity\":\"г\"}')),
    FoodQuantityStruct.fromSerializableMap(jsonDecode(
        '{\"divider\":\"100\",\"multiplier\":\"1000\",\"quantity\":\"кг\",\"altquantity\":\"г\"}')),
    FoodQuantityStruct.fromSerializableMap(jsonDecode(
        '{\"divider\":\"100\",\"multiplier\":\"1000\",\"quantity\":\"л\",\"altquantity\":\"мл\"}')),
    FoodQuantityStruct.fromSerializableMap(jsonDecode(
        '{\"divider\":\"100\",\"multiplier\":\"1\",\"quantity\":\"мл\",\"altquantity\":\"мл\"}')),
    FoodQuantityStruct.fromSerializableMap(jsonDecode(
        '{\"divider\":\"1\",\"multiplier\":\"1\",\"quantity\":\"шт\",\"altquantity\":\"шт\"}'))
  ];
  List<FoodQuantityStruct> get QuantityList => _QuantityList;
  set QuantityList(List<FoodQuantityStruct> value) {
    _QuantityList = value;
    secureStorage.setStringList(
        'ff_QuantityList', value.map((x) => x.serialize()).toList());
  }

  void deleteQuantityList() {
    secureStorage.delete(key: 'ff_QuantityList');
  }

  void addToQuantityList(FoodQuantityStruct value) {
    QuantityList.add(value);
    secureStorage.setStringList(
        'ff_QuantityList', _QuantityList.map((x) => x.serialize()).toList());
  }

  void removeFromQuantityList(FoodQuantityStruct value) {
    QuantityList.remove(value);
    secureStorage.setStringList(
        'ff_QuantityList', _QuantityList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromQuantityList(int index) {
    QuantityList.removeAt(index);
    secureStorage.setStringList(
        'ff_QuantityList', _QuantityList.map((x) => x.serialize()).toList());
  }

  void updateQuantityListAtIndex(
    int index,
    FoodQuantityStruct Function(FoodQuantityStruct) updateFn,
  ) {
    QuantityList[index] = updateFn(_QuantityList[index]);
    secureStorage.setStringList(
        'ff_QuantityList', _QuantityList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInQuantityList(int index, FoodQuantityStruct value) {
    QuantityList.insert(index, value);
    secureStorage.setStringList(
        'ff_QuantityList', _QuantityList.map((x) => x.serialize()).toList());
  }

  List<PeopleActionStruct> _ActionList = [
    PeopleActionStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Сидячая\",\"type\":\"low\"}')),
    PeopleActionStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Лёгкая\",\"type\":\"lessaverage\"}')),
    PeopleActionStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Средняя\",\"type\":\"average\"}')),
    PeopleActionStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Высокая\",\"type\":\"moreaverage\"}')),
    PeopleActionStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Очень высокая\",\"type\":\"high\"}'))
  ];
  List<PeopleActionStruct> get ActionList => _ActionList;
  set ActionList(List<PeopleActionStruct> value) {
    _ActionList = value;
    secureStorage.setStringList(
        'ff_ActionList', value.map((x) => x.serialize()).toList());
  }

  void deleteActionList() {
    secureStorage.delete(key: 'ff_ActionList');
  }

  void addToActionList(PeopleActionStruct value) {
    ActionList.add(value);
    secureStorage.setStringList(
        'ff_ActionList', _ActionList.map((x) => x.serialize()).toList());
  }

  void removeFromActionList(PeopleActionStruct value) {
    ActionList.remove(value);
    secureStorage.setStringList(
        'ff_ActionList', _ActionList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromActionList(int index) {
    ActionList.removeAt(index);
    secureStorage.setStringList(
        'ff_ActionList', _ActionList.map((x) => x.serialize()).toList());
  }

  void updateActionListAtIndex(
    int index,
    PeopleActionStruct Function(PeopleActionStruct) updateFn,
  ) {
    ActionList[index] = updateFn(_ActionList[index]);
    secureStorage.setStringList(
        'ff_ActionList', _ActionList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInActionList(int index, PeopleActionStruct value) {
    ActionList.insert(index, value);
    secureStorage.setStringList(
        'ff_ActionList', _ActionList.map((x) => x.serialize()).toList());
  }

  List<PeopleTargetStruct> _TargetList = [
    PeopleTargetStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Быстрое похудение\",\"type\":\"extraloss\"}')),
    PeopleTargetStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Похудение\",\"type\":\"lessloss\"}')),
    PeopleTargetStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Поддержание\",\"type\":\"average\"}')),
    PeopleTargetStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Набор веса\",\"type\":\"lessget\"}')),
    PeopleTargetStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Быстрый набор\",\"type\":\"extraget\"}'))
  ];
  List<PeopleTargetStruct> get TargetList => _TargetList;
  set TargetList(List<PeopleTargetStruct> value) {
    _TargetList = value;
    secureStorage.setStringList(
        'ff_TargetList', value.map((x) => x.serialize()).toList());
  }

  void deleteTargetList() {
    secureStorage.delete(key: 'ff_TargetList');
  }

  void addToTargetList(PeopleTargetStruct value) {
    TargetList.add(value);
    secureStorage.setStringList(
        'ff_TargetList', _TargetList.map((x) => x.serialize()).toList());
  }

  void removeFromTargetList(PeopleTargetStruct value) {
    TargetList.remove(value);
    secureStorage.setStringList(
        'ff_TargetList', _TargetList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTargetList(int index) {
    TargetList.removeAt(index);
    secureStorage.setStringList(
        'ff_TargetList', _TargetList.map((x) => x.serialize()).toList());
  }

  void updateTargetListAtIndex(
    int index,
    PeopleTargetStruct Function(PeopleTargetStruct) updateFn,
  ) {
    TargetList[index] = updateFn(_TargetList[index]);
    secureStorage.setStringList(
        'ff_TargetList', _TargetList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTargetList(int index, PeopleTargetStruct value) {
    TargetList.insert(index, value);
    secureStorage.setStringList(
        'ff_TargetList', _TargetList.map((x) => x.serialize()).toList());
  }

  List<PeopleSexStruct> _SexList = [
    PeopleSexStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Мужчина\",\"type\":\"male\"}')),
    PeopleSexStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Женщина\",\"type\":\"female\"}'))
  ];
  List<PeopleSexStruct> get SexList => _SexList;
  set SexList(List<PeopleSexStruct> value) {
    _SexList = value;
    secureStorage.setStringList(
        'ff_SexList', value.map((x) => x.serialize()).toList());
  }

  void deleteSexList() {
    secureStorage.delete(key: 'ff_SexList');
  }

  void addToSexList(PeopleSexStruct value) {
    SexList.add(value);
    secureStorage.setStringList(
        'ff_SexList', _SexList.map((x) => x.serialize()).toList());
  }

  void removeFromSexList(PeopleSexStruct value) {
    SexList.remove(value);
    secureStorage.setStringList(
        'ff_SexList', _SexList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSexList(int index) {
    SexList.removeAt(index);
    secureStorage.setStringList(
        'ff_SexList', _SexList.map((x) => x.serialize()).toList());
  }

  void updateSexListAtIndex(
    int index,
    PeopleSexStruct Function(PeopleSexStruct) updateFn,
  ) {
    SexList[index] = updateFn(_SexList[index]);
    secureStorage.setStringList(
        'ff_SexList', _SexList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSexList(int index, PeopleSexStruct value) {
    SexList.insert(index, value);
    secureStorage.setStringList(
        'ff_SexList', _SexList.map((x) => x.serialize()).toList());
  }

  List<ProductStruct> _ProductDB = [];
  List<ProductStruct> get ProductDB => _ProductDB;
  set ProductDB(List<ProductStruct> value) {
    _ProductDB = value;
    secureStorage.setStringList(
        'ff_ProductDB', value.map((x) => x.serialize()).toList());
  }

  void deleteProductDB() {
    secureStorage.delete(key: 'ff_ProductDB');
  }

  void addToProductDB(ProductStruct value) {
    ProductDB.add(value);
    secureStorage.setStringList(
        'ff_ProductDB', _ProductDB.map((x) => x.serialize()).toList());
  }

  void removeFromProductDB(ProductStruct value) {
    ProductDB.remove(value);
    secureStorage.setStringList(
        'ff_ProductDB', _ProductDB.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProductDB(int index) {
    ProductDB.removeAt(index);
    secureStorage.setStringList(
        'ff_ProductDB', _ProductDB.map((x) => x.serialize()).toList());
  }

  void updateProductDBAtIndex(
    int index,
    ProductStruct Function(ProductStruct) updateFn,
  ) {
    ProductDB[index] = updateFn(_ProductDB[index]);
    secureStorage.setStringList(
        'ff_ProductDB', _ProductDB.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProductDB(int index, ProductStruct value) {
    ProductDB.insert(index, value);
    secureStorage.setStringList(
        'ff_ProductDB', _ProductDB.map((x) => x.serialize()).toList());
  }

  String _SearchQuery = '';
  String get SearchQuery => _SearchQuery;
  set SearchQuery(String value) {
    _SearchQuery = value;
  }

  int _PortionSelect = 1;
  int get PortionSelect => _PortionSelect;
  set PortionSelect(int value) {
    _PortionSelect = value;
  }

  int _CurrentStep = 0;
  int get CurrentStep => _CurrentStep;
  set CurrentStep(int value) {
    _CurrentStep = value;
  }

  int _CurrentProduct = 0;
  int get CurrentProduct => _CurrentProduct;
  set CurrentProduct(int value) {
    _CurrentProduct = value;
  }

  int _CheckedPositions = 0;
  int get CheckedPositions => _CheckedPositions;
  set CheckedPositions(int value) {
    _CheckedPositions = value;
  }

  int _LastProductId = 0;
  int get LastProductId => _LastProductId;
  set LastProductId(int value) {
    _LastProductId = value;
    secureStorage.setInt('ff_LastProductId', value);
  }

  void deleteLastProductId() {
    secureStorage.delete(key: 'ff_LastProductId');
  }

  int _LastRecipeId = 0;
  int get LastRecipeId => _LastRecipeId;
  set LastRecipeId(int value) {
    _LastRecipeId = value;
    secureStorage.setInt('ff_LastRecipeId', value);
  }

  void deleteLastRecipeId() {
    secureStorage.delete(key: 'ff_LastRecipeId');
  }

  int _LastBuyId = 0;
  int get LastBuyId => _LastBuyId;
  set LastBuyId(int value) {
    _LastBuyId = value;
    secureStorage.setInt('ff_LastBuyId', value);
  }

  void deleteLastBuyId() {
    secureStorage.delete(key: 'ff_LastBuyId');
  }

  int _LastStepId = 0;
  int get LastStepId => _LastStepId;
  set LastStepId(int value) {
    _LastStepId = value;
    secureStorage.setInt('ff_LastStepId', value);
  }

  void deleteLastStepId() {
    secureStorage.delete(key: 'ff_LastStepId');
  }

  List<ShopItemStruct> _BuyList = [];
  List<ShopItemStruct> get BuyList => _BuyList;
  set BuyList(List<ShopItemStruct> value) {
    _BuyList = value;
    secureStorage.setStringList(
        'ff_BuyList', value.map((x) => x.serialize()).toList());
  }

  void deleteBuyList() {
    secureStorage.delete(key: 'ff_BuyList');
  }

  void addToBuyList(ShopItemStruct value) {
    BuyList.add(value);
    secureStorage.setStringList(
        'ff_BuyList', _BuyList.map((x) => x.serialize()).toList());
  }

  void removeFromBuyList(ShopItemStruct value) {
    BuyList.remove(value);
    secureStorage.setStringList(
        'ff_BuyList', _BuyList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromBuyList(int index) {
    BuyList.removeAt(index);
    secureStorage.setStringList(
        'ff_BuyList', _BuyList.map((x) => x.serialize()).toList());
  }

  void updateBuyListAtIndex(
    int index,
    ShopItemStruct Function(ShopItemStruct) updateFn,
  ) {
    BuyList[index] = updateFn(_BuyList[index]);
    secureStorage.setStringList(
        'ff_BuyList', _BuyList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInBuyList(int index, ShopItemStruct value) {
    BuyList.insert(index, value);
    secureStorage.setStringList(
        'ff_BuyList', _BuyList.map((x) => x.serialize()).toList());
  }

  ShopItemStruct _BuySelect = ShopItemStruct();
  ShopItemStruct get BuySelect => _BuySelect;
  set BuySelect(ShopItemStruct value) {
    _BuySelect = value;
  }

  void updateBuySelectStruct(Function(ShopItemStruct) updateFn) {
    updateFn(_BuySelect);
  }

  AppTheme? _DarkMode = AppTheme.system;
  AppTheme? get DarkMode => _DarkMode;
  set DarkMode(AppTheme? value) {
    _DarkMode = value;
    value != null
        ? secureStorage.setString('ff_DarkMode', value.serialize())
        : secureStorage.remove('ff_DarkMode');
  }

  void deleteDarkMode() {
    secureStorage.delete(key: 'ff_DarkMode');
  }

  bool _AutoNutrition = true;
  bool get AutoNutrition => _AutoNutrition;
  set AutoNutrition(bool value) {
    _AutoNutrition = value;
    secureStorage.setBool('ff_AutoNutrition', value);
  }

  void deleteAutoNutrition() {
    secureStorage.delete(key: 'ff_AutoNutrition');
  }

  bool _IsLoading = false;
  bool get IsLoading => _IsLoading;
  set IsLoading(bool value) {
    _IsLoading = value;
  }

  bool _AutoPlay = false;
  bool get AutoPlay => _AutoPlay;
  set AutoPlay(bool value) {
    _AutoPlay = value;
  }

  bool _PlanAdd = false;
  bool get PlanAdd => _PlanAdd;
  set PlanAdd(bool value) {
    _PlanAdd = value;
  }

  bool _isEmpty = false;
  bool get isEmpty => _isEmpty;
  set isEmpty(bool value) {
    _isEmpty = value;
  }

  bool _SearchFavorite = false;
  bool get SearchFavorite => _SearchFavorite;
  set SearchFavorite(bool value) {
    _SearchFavorite = value;
  }

  bool _isChanging = false;
  bool get isChanging => _isChanging;
  set isChanging(bool value) {
    _isChanging = value;
  }

  bool _SimpleQuantity = false;
  bool get SimpleQuantity => _SimpleQuantity;
  set SimpleQuantity(bool value) {
    _SimpleQuantity = value;
  }

  bool _RunningTimer = false;
  bool get RunningTimer => _RunningTimer;
  set RunningTimer(bool value) {
    _RunningTimer = value;
  }

  bool _isDailyChoose = false;
  bool get isDailyChoose => _isDailyChoose;
  set isDailyChoose(bool value) {
    _isDailyChoose = value;
  }

  int _BuyCount = 1;
  int get BuyCount => _BuyCount;
  set BuyCount(int value) {
    _BuyCount = value;
  }

  ProductCategoryStruct _ProductCategorySelect = ProductCategoryStruct();
  ProductCategoryStruct get ProductCategorySelect => _ProductCategorySelect;
  set ProductCategorySelect(ProductCategoryStruct value) {
    _ProductCategorySelect = value;
  }

  void updateProductCategorySelectStruct(
      Function(ProductCategoryStruct) updateFn) {
    updateFn(_ProductCategorySelect);
  }

  List<ProductCategoryStruct> _ProductCategoryList = [
    ProductCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Овощи\",\"checked\":\"false\"}')),
    ProductCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Фрукты\",\"checked\":\"false\"}')),
    ProductCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Мясо\",\"checked\":\"false\"}')),
    ProductCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Зелень\",\"checked\":\"false\"}')),
    ProductCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Специи\",\"checked\":\"false\"}')),
    ProductCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Молочный\",\"checked\":\"false\"}')),
    ProductCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Крупы\",\"checked\":\"false\"}')),
    ProductCategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Жидкость\",\"checked\":\"false\"}'))
  ];
  List<ProductCategoryStruct> get ProductCategoryList => _ProductCategoryList;
  set ProductCategoryList(List<ProductCategoryStruct> value) {
    _ProductCategoryList = value;
    secureStorage.setStringList(
        'ff_ProductCategoryList', value.map((x) => x.serialize()).toList());
  }

  void deleteProductCategoryList() {
    secureStorage.delete(key: 'ff_ProductCategoryList');
  }

  void addToProductCategoryList(ProductCategoryStruct value) {
    ProductCategoryList.add(value);
    secureStorage.setStringList('ff_ProductCategoryList',
        _ProductCategoryList.map((x) => x.serialize()).toList());
  }

  void removeFromProductCategoryList(ProductCategoryStruct value) {
    ProductCategoryList.remove(value);
    secureStorage.setStringList('ff_ProductCategoryList',
        _ProductCategoryList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProductCategoryList(int index) {
    ProductCategoryList.removeAt(index);
    secureStorage.setStringList('ff_ProductCategoryList',
        _ProductCategoryList.map((x) => x.serialize()).toList());
  }

  void updateProductCategoryListAtIndex(
    int index,
    ProductCategoryStruct Function(ProductCategoryStruct) updateFn,
  ) {
    ProductCategoryList[index] = updateFn(_ProductCategoryList[index]);
    secureStorage.setStringList('ff_ProductCategoryList',
        _ProductCategoryList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProductCategoryList(
      int index, ProductCategoryStruct value) {
    ProductCategoryList.insert(index, value);
    secureStorage.setStringList('ff_ProductCategoryList',
        _ProductCategoryList.map((x) => x.serialize()).toList());
  }

  ProductStruct _ProductSelect = ProductStruct();
  ProductStruct get ProductSelect => _ProductSelect;
  set ProductSelect(ProductStruct value) {
    _ProductSelect = value;
  }

  void updateProductSelectStruct(Function(ProductStruct) updateFn) {
    updateFn(_ProductSelect);
  }

  bool _ProductDBSelect = false;
  bool get ProductDBSelect => _ProductDBSelect;
  set ProductDBSelect(bool value) {
    _ProductDBSelect = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
