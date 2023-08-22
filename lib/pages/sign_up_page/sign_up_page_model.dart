import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RiveAnimation widget.
  final riveAnimationAnimationsList = [
    'Animation 1',
  ];
  List<FlutterFlowRiveController> riveAnimationControllers = [];
  // State field(s) for emailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for passwordField widget.
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  // State field(s) for passwordreField widget.
  TextEditingController? passwordreFieldController;
  late bool passwordreFieldVisibility;
  String? Function(BuildContext, String?)? passwordreFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    riveAnimationAnimationsList.forEach((name) {
      riveAnimationControllers.add(FlutterFlowRiveController(
        name,
        shouldLoop: true,
      ));
    });

    passwordFieldVisibility = false;
    passwordreFieldVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailFieldController?.dispose();
    passwordFieldController?.dispose();
    passwordreFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
