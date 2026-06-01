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
      _DarkMode = await secureStorage.getBool('ff_DarkMode') ?? _DarkMode;
    });
    await _safeInitAsync(() async {
      _AllDailyPlans = (await secureStorage.getStringList('ff_AllDailyPlans'))
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
          _AllDailyPlans;
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
      if (await secureStorage.read(key: 'ff_EmptyRecipe') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_EmptyRecipe') ?? '{}';
          _EmptyRecipe =
              RecipeStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_EmptyDay') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_EmptyDay') ?? '{}';
          _EmptyDay =
              DailyPlanStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _CategoriesList = (await secureStorage.getStringList('ff_CategoriesList'))
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
          _CategoriesList;
    });
    await _safeInitAsync(() async {
      _HardnessList = (await secureStorage.getStringList('ff_HardnessList'))
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
          _HardnessList;
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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _DarkMode = false;
  bool get DarkMode => _DarkMode;
  set DarkMode(bool value) {
    _DarkMode = value;
    secureStorage.setBool('ff_DarkMode', value);
  }

  void deleteDarkMode() {
    secureStorage.delete(key: 'ff_DarkMode');
  }

  List<DailyPlanStruct> _AllDailyPlans = [];
  List<DailyPlanStruct> get AllDailyPlans => _AllDailyPlans;
  set AllDailyPlans(List<DailyPlanStruct> value) {
    _AllDailyPlans = value;
    secureStorage.setStringList(
        'ff_AllDailyPlans', value.map((x) => x.serialize()).toList());
  }

  void deleteAllDailyPlans() {
    secureStorage.delete(key: 'ff_AllDailyPlans');
  }

  void addToAllDailyPlans(DailyPlanStruct value) {
    AllDailyPlans.add(value);
    secureStorage.setStringList(
        'ff_AllDailyPlans', _AllDailyPlans.map((x) => x.serialize()).toList());
  }

  void removeFromAllDailyPlans(DailyPlanStruct value) {
    AllDailyPlans.remove(value);
    secureStorage.setStringList(
        'ff_AllDailyPlans', _AllDailyPlans.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAllDailyPlans(int index) {
    AllDailyPlans.removeAt(index);
    secureStorage.setStringList(
        'ff_AllDailyPlans', _AllDailyPlans.map((x) => x.serialize()).toList());
  }

  void updateAllDailyPlansAtIndex(
    int index,
    DailyPlanStruct Function(DailyPlanStruct) updateFn,
  ) {
    AllDailyPlans[index] = updateFn(_AllDailyPlans[index]);
    secureStorage.setStringList(
        'ff_AllDailyPlans', _AllDailyPlans.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAllDailyPlans(int index, DailyPlanStruct value) {
    AllDailyPlans.insert(index, value);
    secureStorage.setStringList(
        'ff_AllDailyPlans', _AllDailyPlans.map((x) => x.serialize()).toList());
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

  RecipeStruct _EmptyRecipe = RecipeStruct();
  RecipeStruct get EmptyRecipe => _EmptyRecipe;
  set EmptyRecipe(RecipeStruct value) {
    _EmptyRecipe = value;
    secureStorage.setString('ff_EmptyRecipe', value.serialize());
  }

  void deleteEmptyRecipe() {
    secureStorage.delete(key: 'ff_EmptyRecipe');
  }

  void updateEmptyRecipeStruct(Function(RecipeStruct) updateFn) {
    updateFn(_EmptyRecipe);
    secureStorage.setString('ff_EmptyRecipe', _EmptyRecipe.serialize());
  }

  DailyPlanStruct _EmptyDay = DailyPlanStruct();
  DailyPlanStruct get EmptyDay => _EmptyDay;
  set EmptyDay(DailyPlanStruct value) {
    _EmptyDay = value;
    secureStorage.setString('ff_EmptyDay', value.serialize());
  }

  void deleteEmptyDay() {
    secureStorage.delete(key: 'ff_EmptyDay');
  }

  void updateEmptyDayStruct(Function(DailyPlanStruct) updateFn) {
    updateFn(_EmptyDay);
    secureStorage.setString('ff_EmptyDay', _EmptyDay.serialize());
  }

  List<FoodCategoryStruct> _CategoriesList = [
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
        jsonDecode('{\"name\":\"Выпечка\",\"category\":\"baking\"}'))
  ];
  List<FoodCategoryStruct> get CategoriesList => _CategoriesList;
  set CategoriesList(List<FoodCategoryStruct> value) {
    _CategoriesList = value;
    secureStorage.setStringList(
        'ff_CategoriesList', value.map((x) => x.serialize()).toList());
  }

  void deleteCategoriesList() {
    secureStorage.delete(key: 'ff_CategoriesList');
  }

  void addToCategoriesList(FoodCategoryStruct value) {
    CategoriesList.add(value);
    secureStorage.setStringList('ff_CategoriesList',
        _CategoriesList.map((x) => x.serialize()).toList());
  }

  void removeFromCategoriesList(FoodCategoryStruct value) {
    CategoriesList.remove(value);
    secureStorage.setStringList('ff_CategoriesList',
        _CategoriesList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCategoriesList(int index) {
    CategoriesList.removeAt(index);
    secureStorage.setStringList('ff_CategoriesList',
        _CategoriesList.map((x) => x.serialize()).toList());
  }

  void updateCategoriesListAtIndex(
    int index,
    FoodCategoryStruct Function(FoodCategoryStruct) updateFn,
  ) {
    CategoriesList[index] = updateFn(_CategoriesList[index]);
    secureStorage.setStringList('ff_CategoriesList',
        _CategoriesList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCategoriesList(int index, FoodCategoryStruct value) {
    CategoriesList.insert(index, value);
    secureStorage.setStringList('ff_CategoriesList',
        _CategoriesList.map((x) => x.serialize()).toList());
  }

  List<FoodDifficultyStruct> _HardnessList = [
    FoodDifficultyStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Лёгкий\",\"difficult\":\"easy\"}')),
    FoodDifficultyStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Средний\",\"difficult\":\"medium\"}')),
    FoodDifficultyStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Сложный\",\"difficult\":\"hard\"}'))
  ];
  List<FoodDifficultyStruct> get HardnessList => _HardnessList;
  set HardnessList(List<FoodDifficultyStruct> value) {
    _HardnessList = value;
    secureStorage.setStringList(
        'ff_HardnessList', value.map((x) => x.serialize()).toList());
  }

  void deleteHardnessList() {
    secureStorage.delete(key: 'ff_HardnessList');
  }

  void addToHardnessList(FoodDifficultyStruct value) {
    HardnessList.add(value);
    secureStorage.setStringList(
        'ff_HardnessList', _HardnessList.map((x) => x.serialize()).toList());
  }

  void removeFromHardnessList(FoodDifficultyStruct value) {
    HardnessList.remove(value);
    secureStorage.setStringList(
        'ff_HardnessList', _HardnessList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromHardnessList(int index) {
    HardnessList.removeAt(index);
    secureStorage.setStringList(
        'ff_HardnessList', _HardnessList.map((x) => x.serialize()).toList());
  }

  void updateHardnessListAtIndex(
    int index,
    FoodDifficultyStruct Function(FoodDifficultyStruct) updateFn,
  ) {
    HardnessList[index] = updateFn(_HardnessList[index]);
    secureStorage.setStringList(
        'ff_HardnessList', _HardnessList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInHardnessList(int index, FoodDifficultyStruct value) {
    HardnessList.insert(index, value);
    secureStorage.setStringList(
        'ff_HardnessList', _HardnessList.map((x) => x.serialize()).toList());
  }

  List<FoodQuantityStruct> _QuantityList = [
    FoodQuantityStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"г\",\"quantity\":\"g\"}')),
    FoodQuantityStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"кг\",\"quantity\":\"kg\"}')),
    FoodQuantityStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"ст.л.\",\"quantity\":\"sp\",\"isAltQuantity\":\"true\",\"altTranslate\":\"15.0\",\"altQuantity\":\"ml\"}')),
    FoodQuantityStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"л\",\"quantity\":\"l\"}')),
    FoodQuantityStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"мл\",\"quantity\":\"ml\"}')),
    FoodQuantityStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"ч.л.\",\"quantity\":\"lsp\",\"isAltQuantity\":\"true\",\"altTranslate\":\"5.0\",\"altQuantity\":\"ml\"}')),
    FoodQuantityStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"шт.\",\"quantity\":\"pi\"}'))
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

  RecipeStruct _SelectedRecipe = RecipeStruct();
  RecipeStruct get SelectedRecipe => _SelectedRecipe;
  set SelectedRecipe(RecipeStruct value) {
    _SelectedRecipe = value;
  }

  void updateSelectedRecipeStruct(Function(RecipeStruct) updateFn) {
    updateFn(_SelectedRecipe);
  }

  int _currentStep = 0;
  int get currentStep => _currentStep;
  set currentStep(int value) {
    _currentStep = value;
  }

  Hardness? _selectedHardness;
  Hardness? get selectedHardness => _selectedHardness;
  set selectedHardness(Hardness? value) {
    _selectedHardness = value;
  }

  Food? _selectedCategory;
  Food? get selectedCategory => _selectedCategory;
  set selectedCategory(Food? value) {
    _selectedCategory = value;
  }

  String _SearchQuery = '';
  String get SearchQuery => _SearchQuery;
  set SearchQuery(String value) {
    _SearchQuery = value;
  }

  DailyPlanStruct _selectedDay = DailyPlanStruct();
  DailyPlanStruct get selectedDay => _selectedDay;
  set selectedDay(DailyPlanStruct value) {
    _selectedDay = value;
  }

  void updateSelectedDayStruct(Function(DailyPlanStruct) updateFn) {
    updateFn(_selectedDay);
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
