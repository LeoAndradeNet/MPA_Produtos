// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsStruct extends BaseStruct {
  ProductsStruct({
    int? id,
    String? name,
    PhotoStruct? photo,
  })  : _id = id,
        _name = name,
        _photo = photo;

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

  // "photo" field.
  PhotoStruct? _photo;
  PhotoStruct get photo => _photo ?? PhotoStruct();
  set photo(PhotoStruct? val) => _photo = val;

  void updatePhoto(Function(PhotoStruct) updateFn) {
    updateFn(_photo ??= PhotoStruct());
  }

  bool hasPhoto() => _photo != null;

  static ProductsStruct fromMap(Map<String, dynamic> data) => ProductsStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        photo: data['photo'] is PhotoStruct
            ? data['photo']
            : PhotoStruct.maybeFromMap(data['photo']),
      );

  static ProductsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'photo': _photo?.toMap(),
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
        'photo': serializeParam(
          _photo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProductsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductsStruct(
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
        photo: deserializeStructParam(
          data['photo'],
          ParamType.DataStruct,
          false,
          structBuilder: PhotoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductsStruct &&
        id == other.id &&
        name == other.name &&
        photo == other.photo;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, photo]);
}

ProductsStruct createProductsStruct({
  int? id,
  String? name,
  PhotoStruct? photo,
}) =>
    ProductsStruct(
      id: id,
      name: name,
      photo: photo ?? PhotoStruct(),
    );
