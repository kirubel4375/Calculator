import 'package:calculator/Reusables/AlreadyhaveAccount.dart';
import 'package:calculator/Reusables/Card_wraper.dart';
import 'package:calculator/Reusables/Path_painter.dart';
import 'package:calculator/Screens/CalcPage.dart';
import 'package:calculator/Screens/RegisterPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static final String route = '/sign_in_page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ClipRect(
          child: CustomPaint(
            painter: MyPainter(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CardWraperContainer(
                      upperText: "Login",
                      isSignUp: false,
                      emailOnchanged: (value) {
                        email = value;
                      },
                      passwordOnChanged: (value) {
                        password = value;
                      },
                      onPressed: () async {
                        // final _auth = FirebaseAuth.instance;
                        // try {
                        //   final UserCredential? user =
                        //       await _auth.signInWithEmailAndPassword(
                        //           email: email, password: password);
                                  
                        //   if (user != null)
                        //     Navigator.pushNamed(context, MyHomePage.route);
                        // } catch (_) {}
                        Navigator.pushNamed(context, CalcApp.route);
                      },
                      forgotPasswordPress: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordReset()));
                      },
                    ),
                    AlreadyHaveAnAccountCheck(
                      login: true,
                      press: () {
                        Navigator.pushNamed(context, RegisterPage.route);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
