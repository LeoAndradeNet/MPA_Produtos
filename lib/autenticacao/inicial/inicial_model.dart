import '/autenticacao/login_registro/login_registro_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inicial_widget.dart' show InicialWidget;
import 'package:flutter/material.dart';

class InicialModel extends FlutterFlowModel<InicialWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LoginRegistro component.
  late LoginRegistroModel loginRegistroModel;

  @override
  void initState(BuildContext context) {
    loginRegistroModel = createModel(context, () => LoginRegistroModel());
  }

  @override
  void dispose() {
    loginRegistroModel.dispose();
  }
}
