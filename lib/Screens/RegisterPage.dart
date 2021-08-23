import 'package:calculator/Reusables/AlreadyhaveAccount.dart';
import 'package:calculator/Reusables/Card_wraper.dart';
import 'package:calculator/Reusables/Path_painter.dart';
import 'package:calculator/Screens/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


class RegisterPage extends StatefulWidget {
  static final String route = '/sign_up_page';
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
             upperText: "Sign Up",
              isSignUp: true,
              emailOnchanged: (value){
                email = value;
              },
              passwordOnChanged: (value){
                password = value;
              },
              onPressed: () async {
                          // final _auth = FirebaseAuth.instance;
                          // try {
                          //   final UserCredential? newUser =
                          //       await _auth.createUserWithEmailAndPassword(
                          //           email: email,
                          //           password: password);
                          //           if(newUser!=null) Navigator.pushNamed(context, MyHomePage.route);
                          // } catch (_) {

                          // }
                        },
                      confirmOnChanged: (value){},
                      confirmer: (String? value) {
                              if(value!=null){
                                MatchValidator(
                                    errorText: "Passwords don't match")
                                .validateMatch(value, password);
                              }else RequiredValidator(errorText: "This field cannot be empty");
                              
                            } ,
              ),
               AlreadyHaveAnAccountCheck(
               login: false,
                   press: () {
                     Navigator.pushNamed(context, LoginPage.route);
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