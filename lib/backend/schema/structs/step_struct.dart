// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StepStruct extends BaseStruct {
  StepStruct({
    int? id,
    int? queueId,
    String? desc,
    String? tip,
    int? timer,
    String? pictureBase64,
  })  : _id = id,
        _queueId = queueId,
        _desc = desc,
        _tip = tip,
        _timer = timer,
        _pictureBase64 = pictureBase64;

  // "id" field.
  int? _id;
  int get id => _id ?? -1;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "queue_id" field.
  int? _queueId;
  int get queueId => _queueId ?? -1;
  set queueId(int? val) => _queueId = val;

  void incrementQueueId(int amount) => queueId = queueId + amount;

  bool hasQueueId() => _queueId != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "tip" field.
  String? _tip;
  String get tip => _tip ?? '';
  set tip(String? val) => _tip = val;

  bool hasTip() => _tip != null;

  // "timer" field.
  int? _timer;
  int get timer => _timer ?? 0;
  set timer(int? val) => _timer = val;

  void incrementTimer(int amount) => timer = timer + amount;

  bool hasTimer() => _timer != null;

  // "pictureBase64" field.
  String? _pictureBase64;
  String get pictureBase64 => _pictureBase64 ?? '';
  set pictureBase64(String? val) => _pictureBase64 = val;

  bool hasPictureBase64() => _pictureBase64 != null;

  static StepStruct fromMap(Map<String, dynamic> data) => StepStruct(
        id: castToType<int>(data['id']),
        queueId: castToType<int>(data['queue_id']),
        desc: data['desc'] as String?,
        tip: data['tip'] as String?,
        timer: castToType<int>(data['timer']),
        pictureBase64: data['pictureBase64'] as String?,
      );

  static StepStruct? maybeFromMap(dynamic data) =>
      data is Map ? StepStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'queue_id': _queueId,
        'desc': _desc,
        'tip': _tip,
        'timer': _timer,
        'pictureBase64': _pictureBase64,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'queue_id': serializeParam(
          _queueId,
          ParamType.int,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'tip': serializeParam(
          _tip,
          ParamType.String,
        ),
        'timer': serializeParam(
          _timer,
          ParamType.int,
        ),
        'pictureBase64': serializeParam(
          _pictureBase64,
          ParamType.String,
        ),
      }.withoutNulls;

  static StepStruct fromSerializableMap(Map<String, dynamic> data) =>
      StepStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        queueId: deserializeParam(
          data['queue_id'],
          ParamType.int,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        tip: deserializeParam(
          data['tip'],
          ParamType.String,
          false,
        ),
        timer: deserializeParam(
          data['timer'],
          ParamType.int,
          false,
        ),
        pictureBase64: deserializeParam(
          data['pictureBase64'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StepStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StepStruct &&
        id == other.id &&
        queueId == other.queueId &&
        desc == other.desc &&
        tip == other.tip &&
        timer == other.timer &&
        pictureBase64 == other.pictureBase64;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, queueId, desc, tip, timer, pictureBase64]);
}

StepStruct createStepStruct({
  int? id,
  int? queueId,
  String? desc,
  String? tip,
  int? timer,
  String? pictureBase64,
}) =>
    StepStruct(
      id: id,
      queueId: queueId,
      desc: desc,
      tip: tip,
      timer: timer,
      pictureBase64: pictureBase64,
    );
