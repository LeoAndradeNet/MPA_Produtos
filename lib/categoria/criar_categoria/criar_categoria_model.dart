import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'criar_categoria_widget.dart' show CriarCategoriaWidget;
import 'package:flutter/material.dart';

class CriarCategoriaModel extends FlutterFlowModel<CriarCategoriaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Categoria Add)] action in btnGravar widget.
  ApiCallResponse? apiResultCategoria;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();
  }
}
