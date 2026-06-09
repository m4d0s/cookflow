// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeopleParamStruct extends BaseStruct {
  PeopleParamStruct({
    int? weight,
    int? height,
    int? age,
    MealAction? activity,
    MealTarget? target,
    HumanSex? sex,
  })  : _weight = weight,
        _height = height,
        _age = age,
        _activity = activity,
        _target = target,
        _sex = sex;

  // "Weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  set weight(int? val) => _weight = val;

  void incrementWeight(int amount) => weight = weight + amount;

  bool hasWeight() => _weight != null;

  // "Height" field.
  int? _height;
  int get height => _height ?? 0;
  set height(int? val) => _height = val;

  void incrementHeight(int amount) => height = height + amount;

  bool hasHeight() => _height != null;

  // "Age" field.
  int? _age;
  int get age => _age ?? 0;
  set age(int? val) => _age = val;

  void incrementAge(int amount) => age = age + amount;

  bool hasAge() => _age != null;

  // "Activity" field.
  MealAction? _activity;
  MealAction? get activity => _activity;
  set activity(MealAction? val) => _activity = val;

  bool hasActivity() => _activity != null;

  // "Target" field.
  MealTarget? _target;
  MealTarget? get target => _target;
  set target(MealTarget? val) => _target = val;

  bool hasTarget() => _target != null;

  // "Sex" field.
  HumanSex? _sex;
  HumanSex? get sex => _sex;
  set sex(HumanSex? val) => _sex = val;

  bool hasSex() => _sex != null;

  static PeopleParamStruct fromMap(Map<String, dynamic> data) =>
      PeopleParamStruct(
        weight: castToType<int>(data['Weight']),
        height: castToType<int>(data['Height']),
        age: castToType<int>(data['Age']),
        activity: data['Activity'] is MealAction
            ? data['Activity']
            : deserializeEnum<MealAction>(data['Activity']),
        target: data['Target'] is MealTarget
            ? data['Target']
            : deserializeEnum<MealTarget>(data['Target']),
        sex: data['Sex'] is HumanSex
            ? data['Sex']
            : deserializeEnum<HumanSex>(data['Sex']),
      );

  static PeopleParamStruct? maybeFromMap(dynamic data) => data is Map
      ? PeopleParamStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Weight': _weight,
        'Height': _height,
        'Age': _age,
        'Activity': _activity?.serialize(),
        'Target': _target?.serialize(),
        'Sex': _sex?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Weight': serializeParam(
          _weight,
          ParamType.int,
        ),
        'Height': serializeParam(
          _height,
          ParamType.int,
        ),
        'Age': serializeParam(
          _age,
          ParamType.int,
        ),
        'Activity': serializeParam(
          _activity,
          ParamType.Enum,
        ),
        'Target': serializeParam(
          _target,
          ParamType.Enum,
        ),
        'Sex': serializeParam(
          _sex,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static PeopleParamStruct fromSerializableMap(Map<String, dynamic> data) =>
      PeopleParamStruct(
        weight: deserializeParam(
          data['Weight'],
          ParamType.int,
          false,
        ),
        height: deserializeParam(
          data['Height'],
          ParamType.int,
          false,
        ),
        age: deserializeParam(
          data['Age'],
          ParamType.int,
          false,
        ),
        activity: deserializeParam<MealAction>(
          data['Activity'],
          ParamType.Enum,
          false,
        ),
        target: deserializeParam<MealTarget>(
          data['Target'],
          ParamType.Enum,
          false,
        ),
        sex: deserializeParam<HumanSex>(
          data['Sex'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'PeopleParamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PeopleParamStruct &&
        weight == other.weight &&
        height == other.height &&
        age == other.age &&
        activity == other.activity &&
        target == other.target &&
        sex == other.sex;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([weight, height, age, activity, target, sex]);
}

PeopleParamStruct createPeopleParamStruct({
  int? weight,
  int? height,
  int? age,
  MealAction? activity,
  MealTarget? target,
  HumanSex? sex,
}) =>
    PeopleParamStruct(
      weight: weight,
      height: height,
      age: age,
      activity: activity,
      target: target,
      sex: sex,
    );
