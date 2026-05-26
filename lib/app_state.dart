import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
  }

  bool _AutoPlay = false;
  bool get AutoPlay => _AutoPlay;
  set AutoPlay(bool value) {
    _AutoPlay = value;
  }

  RecipeStruct _SelectedRecipe = RecipeStruct();
  RecipeStruct get SelectedRecipe => _SelectedRecipe;
  set SelectedRecipe(RecipeStruct value) {
    _SelectedRecipe = value;
  }

  void updateSelectedRecipeStruct(Function(RecipeStruct) updateFn) {
    updateFn(_SelectedRecipe);
  }

  bool _isEmpty = false;
  bool get isEmpty => _isEmpty;
  set isEmpty(bool value) {
    _isEmpty = value;
  }

  bool _IsLoading = false;
  bool get IsLoading => _IsLoading;
  set IsLoading(bool value) {
    _IsLoading = value;
  }

  bool _PlanAdd = false;
  bool get PlanAdd => _PlanAdd;
  set PlanAdd(bool value) {
    _PlanAdd = value;
  }

  String _SearchQuery = '';
  String get SearchQuery => _SearchQuery;
  set SearchQuery(String value) {
    _SearchQuery = value;
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
