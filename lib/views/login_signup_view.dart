// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

import '../constants/routes.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'home_page_model.dart';
// export 'home_page_model.dart';

class LogSignIn extends StatefulWidget {
  const LogSignIn({Key? key}) : super(key: key);

  @override
  _LogSignInState createState() => _LogSignInState();
}

class _LogSignInState extends State<LogSignIn> {
  // late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    // _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: ClipRect(
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                          sigmaX: 4,
                          sigmaY: 4,
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/welcome_background.jpg',
                                  width: 400,
                                  height: 800,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.09, 0.17),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/icon.png',
                          width: 228,
                          height: 334,
                          fit: BoxFit.cover,
                          alignment: Alignment(0.00, 1.00),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 1.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 680, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 131,
                        decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(70),
                            topRight: Radius.circular(70),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.87, -1.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 650, 0, 0),
                      child: Container(
                        width: 180,
                        height: 70,
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(registerRoute, (route) => false);
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12) 
                              )
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF03493C))
                          ),
                          child: Text('Signup',
                          style: TextStyle(
                            fontSize: 20
                          ),
                            ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.87, -0.98),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 650, 0, 0),
                      child: Container(
                        width: 180,
                        height: 70,
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (route) => false);
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12) 
                              )
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF03493C))
                          ),
                          child: Text('Login',
                          style: TextStyle(
                            fontSize: 20
                          ),
                            ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
