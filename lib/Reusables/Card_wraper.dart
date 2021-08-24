import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'ExpandedButtonForAll.dart';
import 'SignLogForm.dart';

class CardWraperContainer extends StatelessWidget {
  const CardWraperContainer({
    Key? key,
    required this.upperText,
    this.onPressed,
    required this.emailOnchanged,
    required this.passwordOnChanged,
     this.confirmOnChanged,
    required this.isSignUp,
    this.forgotPasswordPress,
    this.confirmer,
  }) : super(key: key);

  final String upperText;
  final Function()? onPressed;
  final void Function(String) emailOnchanged;
  final void Function(String) passwordOnChanged;
  final bool isSignUp;
  final void Function(String)? confirmOnChanged;
  final Function()? forgotPasswordPress;
  final String? Function(String?)? confirmer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ShaderMask(
                    shaderCallback: (bounds) => RadialGradient(
                      center: Alignment.topLeft,
                      radius: 1.0,
                      colors: [Colors.yellow, Colors.deepOrange.shade900],
                      tileMode: TileMode.mirror,
                    ).createShader(bounds),
                    child: Text(
                      '$upperText!!',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'name',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SignLogForm(
                  obscure: false,
                  onchanged: emailOnchanged,
                  validator:
                      RequiredValidator(errorText: "This Field Is Required"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, bottom: 18, top: 20),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SignLogForm(
                  obscure: true,
                  onchanged: passwordOnChanged,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "This Field Is Required"),
                    MinLengthValidator(6,
                        errorText: "Should be atleast 6 characters"),
                  ]),
                ),
                if(isSignUp)Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'first name',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                if(isSignUp)SignLogForm(
                  obscure: false,
                  onchanged: emailOnchanged,
                  validator:
                      RequiredValidator(errorText: "This Field Is Required"),
                ),
                if(isSignUp)Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'last name',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                if(isSignUp)SignLogForm(
                  obscure: false,
                  onchanged: emailOnchanged,
                  validator:
                      RequiredValidator(errorText: "This Field Is Required"),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ExpandedButtonForAll(
                  onPressed: onPressed,
                  text: upperText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
