import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_registro_widget.dart' show LoginRegistroWidget;
import 'package:flutter/material.dart';

class LoginRegistroModel extends FlutterFlowModel<LoginRegistroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtNomeRegistro widget.
  FocusNode? txtNomeRegistroFocusNode;
  TextEditingController? txtNomeRegistroTextController;
  String? Function(BuildContext, String?)?
      txtNomeRegistroTextControllerValidator;
  String? _txtNomeRegistroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Seu nome aqui... is required';
    }

    return null;
  }

  // State field(s) for txtEmailRegistro widget.
  FocusNode? txtEmailRegistroFocusNode;
  TextEditingController? txtEmailRegistroTextController;
  String? Function(BuildContext, String?)?
      txtEmailRegistroTextControllerValidator;
  // State field(s) for txtSenhaRegistro widget.
  FocusNode? txtSenhaRegistroFocusNode;
  TextEditingController? txtSenhaRegistroTextController;
  late bool txtSenhaRegistroVisibility;
  String? Function(BuildContext, String?)?
      txtSenhaRegistroTextControllerValidator;
  // Stores action output result for [Backend Call - API (Registrar)] action in btnRegistrar widget.
  ApiCallResponse? registro;
  // State field(s) for txtEmailLogin widget.
  FocusNode? txtEmailLoginFocusNode;
  TextEditingController? txtEmailLoginTextController;
  String? Function(BuildContext, String?)? txtEmailLoginTextControllerValidator;
  // State field(s) for txtSenhaLogin widget.
  FocusNode? txtSenhaLoginFocusNode;
  TextEditingController? txtSenhaLoginTextController;
  late bool txtSenhaLoginVisibility;
  String? Function(BuildContext, String?)? txtSenhaLoginTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login)] action in btnLogar widget.
  ApiCallResponse? login;

  @override
  void initState(BuildContext context) {
    txtNomeRegistroTextControllerValidator =
        _txtNomeRegistroTextControllerValidator;
    txtSenhaRegistroVisibility = false;
    txtSenhaLoginVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    txtNomeRegistroFocusNode?.dispose();
    txtNomeRegistroTextController?.dispose();

    txtEmailRegistroFocusNode?.dispose();
    txtEmailRegistroTextController?.dispose();

    txtSenhaRegistroFocusNode?.dispose();
    txtSenhaRegistroTextController?.dispose();

    txtEmailLoginFocusNode?.dispose();
    txtEmailLoginTextController?.dispose();

    txtSenhaLoginFocusNode?.dispose();
    txtSenhaLoginTextController?.dispose();
  }
}
