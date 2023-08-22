import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_page_model.dart';
export 'sign_up_page_model.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({Key? key}) : super(key: key);

  @override
  _SignUpPageWidgetState createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  late SignUpPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpPageModel());

    _model.emailFieldController ??= TextEditingController();
    _model.passwordFieldController ??= TextEditingController();
    _model.passwordreFieldController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Sign Up',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).secondary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 250.0,
                  height: 230.0,
                  child: RiveAnimation.asset(
                    'assets/rive_animations/378-707-sun-rising.riv',
                    artboard: 'New Artboard',
                    fit: BoxFit.cover,
                    controllers: _model.riveAnimationControllers,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 30.0),
                child: TextFormField(
                  controller: _model.emailFieldController,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Enter email',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                    hintText: 'EMAIL',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge,
                  validator:
                      _model.emailFieldControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 30.0),
                child: TextFormField(
                  controller: _model.passwordFieldController,
                  onFieldSubmitted: (_) async {
                    context.pushNamed('login');
                  },
                  autofocus: true,
                  obscureText: !_model.passwordFieldVisibility,
                  decoration: InputDecoration(
                    labelText: 'Enter password',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                    hintText: 'Password',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => _model.passwordFieldVisibility =
                            !_model.passwordFieldVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.passwordFieldVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                  validator: _model.passwordFieldControllerValidator
                      .asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 30.0),
                child: TextFormField(
                  controller: _model.passwordreFieldController,
                  autofocus: true,
                  obscureText: !_model.passwordreFieldVisibility,
                  decoration: InputDecoration(
                    labelText: 'Enter again password',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                    hintText: 'Password',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => _model.passwordreFieldVisibility =
                            !_model.passwordreFieldVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.passwordreFieldVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                  validator: _model.passwordreFieldControllerValidator
                      .asValidator(context),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  if (_model.passwordFieldController.text !=
                      _model.passwordreFieldController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Passwords don\'t match!',
                        ),
                      ),
                    );
                    return;
                  }

                  final user = await authManager.createAccountWithEmail(
                    context,
                    _model.emailFieldController.text,
                    _model.passwordFieldController.text,
                  );
                  if (user == null) {
                    return;
                  }

                  context.pushNamedAuth('login', context.mounted);
                },
                text: 'Sign Up',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Text(
                  'i have a account',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
