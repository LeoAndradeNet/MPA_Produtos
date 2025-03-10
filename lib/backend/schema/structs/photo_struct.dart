// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhotoStruct extends BaseStruct {
  PhotoStruct({
    String? url,
  }) : _url = url;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  static PhotoStruct fromMap(Map<String, dynamic> data) => PhotoStruct(
        url: data['url'] as String?,
      );

  static PhotoStruct? maybeFromMap(dynamic data) =>
      data is Map ? PhotoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static PhotoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PhotoStruct(
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PhotoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PhotoStruct && url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([url]);
}

PhotoStruct createPhotoStruct({
  String? url,
}) =>
    PhotoStruct(
      url: url,
    );
