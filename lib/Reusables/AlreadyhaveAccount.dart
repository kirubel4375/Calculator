import 'package:flutter/material.dart';
import '../Constants.dart';
class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function()? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account? " : "Already have an Account? ",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: size<=370? 16 : 20,
            ),
        ),
        TextButton(
          onPressed: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: kWSLcolor,
              fontWeight: FontWeight.w600,
            fontSize: size<=370? 19 : 23,
            ),
          ),
        )
      ],
    );
  }
}
