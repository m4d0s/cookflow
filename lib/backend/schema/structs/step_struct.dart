// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StepStruct extends BaseStruct {
  StepStruct({
    int? queueId,
    String? desc,
    String? tip,
    int? timer,
    String? picture,
    Picture? pictureType,
  })  : _queueId = queueId,
        _desc = desc,
        _tip = tip,
        _timer = timer,
        _picture = picture,
        _pictureType = pictureType;

  // "queue_id" field.
  int? _queueId;
  int get queueId => _queueId ?? 0;
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

  // "picture" field.
  String? _picture;
  String get picture => _picture ?? '';
  set picture(String? val) => _picture = val;

  bool hasPicture() => _picture != null;

  // "picture_type" field.
  Picture? _pictureType;
  Picture? get pictureType => _pictureType;
  set pictureType(Picture? val) => _pictureType = val;

  bool hasPictureType() => _pictureType != null;

  static StepStruct fromMap(Map<String, dynamic> data) => StepStruct(
        queueId: castToType<int>(data['queue_id']),
        desc: data['desc'] as String?,
        tip: data['tip'] as String?,
        timer: castToType<int>(data['timer']),
        picture: data['picture'] as String?,
        pictureType: data['picture_type'] is Picture
            ? data['picture_type']
            : deserializeEnum<Picture>(data['picture_type']),
      );

  static StepStruct? maybeFromMap(dynamic data) =>
      data is Map ? StepStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'queue_id': _queueId,
        'desc': _desc,
        'tip': _tip,
        'timer': _timer,
        'picture': _picture,
        'picture_type': _pictureType?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'picture': serializeParam(
          _picture,
          ParamType.String,
        ),
        'picture_type': serializeParam(
          _pictureType,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static StepStruct fromSerializableMap(Map<String, dynamic> data) =>
      StepStruct(
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
        picture: deserializeParam(
          data['picture'],
          ParamType.String,
          false,
        ),
        pictureType: deserializeParam<Picture>(
          data['picture_type'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'StepStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StepStruct &&
        queueId == other.queueId &&
        desc == other.desc &&
        tip == other.tip &&
        timer == other.timer &&
        picture == other.picture &&
        pictureType == other.pictureType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([queueId, desc, tip, timer, picture, pictureType]);
}

StepStruct createStepStruct({
  int? queueId,
  String? desc,
  String? tip,
  int? timer,
  String? picture,
  Picture? pictureType,
}) =>
    StepStruct(
      queueId: queueId,
      desc: desc,
      tip: tip,
      timer: timer,
      picture: picture,
      pictureType: pictureType,
    );
