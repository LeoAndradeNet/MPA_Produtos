import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Autenticacao Group Code

class AutenticacaoGroup {
  static String getBaseUrl() =>
      'https://xbnb-8lga-shzm.b2.xano.io/api:Q2luFzBp';
  static Map<String, String> headers = {};
  static RegistrarCall registrarCall = RegistrarCall();
  static LoginCall loginCall = LoginCall();
  static MeCall meCall = MeCall();
}

class RegistrarCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? senha = '',
  }) async {
    final baseUrl = AutenticacaoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(senha)}" 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registrar',
      apiUrl: '${baseUrl}/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final baseUrl = AutenticacaoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(senha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class MeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AutenticacaoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Me',
      apiUrl: '${baseUrl}/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
}

/// End Autenticacao Group Code

/// Start ProductCatalogAPI Group Code

class ProductCatalogAPIGroup {
  static String getBaseUrl() =>
      'https://xbnb-8lga-shzm.b2.xano.io/api:IuNb-2Jd';
  static Map<String, String> headers = {};
  static DeleteCategoryRecordCall deleteCategoryRecordCall =
      DeleteCategoryRecordCall();
  static GetCategoryRecordCall getCategoryRecordCall = GetCategoryRecordCall();
  static EditCategoryRecordCall editCategoryRecordCall =
      EditCategoryRecordCall();
  static QueryAllCategoryRecordsCall queryAllCategoryRecordsCall =
      QueryAllCategoryRecordsCall();
  static CategoriaAddCall categoriaAddCall = CategoriaAddCall();
  static DeleteProductRecordCall deleteProductRecordCall =
      DeleteProductRecordCall();
  static GetProductRecordCall getProductRecordCall = GetProductRecordCall();
  static EditProductRecordCall editProductRecordCall = EditProductRecordCall();
  static QueryAllProductRecordsCall queryAllProductRecordsCall =
      QueryAllProductRecordsCall();
  static AddProductRecordCall addProductRecordCall = AddProductRecordCall();
  static UploadImageCall uploadImageCall = UploadImageCall();
}

class DeleteCategoryRecordCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete category record.',
      apiUrl: '${baseUrl}/category/${categoryId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCategoryRecordCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get category record',
      apiUrl: '${baseUrl}/category/${categoryId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditCategoryRecordCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit category record',
      apiUrl: '${baseUrl}/category/${categoryId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllCategoryRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all category records',
      apiUrl: '${baseUrl}/category',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CategoriaAddCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? name = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Categoria Add',
      apiUrl: '${baseUrl}/category',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProductRecordCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete product record.',
      apiUrl: '${baseUrl}/product/${productId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductRecordCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get product record',
      apiUrl: '${baseUrl}/product/${productId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditProductRecordCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? bearerAuth = '',
    String? name = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "description": "Qualquer coisa",
  "value": 10,
  "stock_level": 10,
  "category_id": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit product record',
      apiUrl: '${baseUrl}/product/${productId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllProductRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all product records',
      apiUrl: '${baseUrl}/product',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddProductRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? name = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "description": "qualquer coisa",
  "value": 10,
  "stock_level": 50,
  "category_id": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add product record',
      apiUrl: '${baseUrl}/product',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadImageCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? token = '',
    FFUploadedFile? image,
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Upload Image',
      apiUrl: '${baseUrl}/product/upload/${productId}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'file': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ProductCatalogAPI Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
