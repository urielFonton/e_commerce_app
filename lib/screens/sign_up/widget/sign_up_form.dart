import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/sign_up/widget/body.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/widget/custom_suffi_icon.dart';
import 'package:e_commerce_app/widget/default_button.dart';
import 'package:e_commerce_app/widget/form_error.dart';
import 'package:flutter/material.dart';

import '../../complete_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirm_password;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buidEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          DefaultButton(
              text: "Next",
              press: () {
                if (_formKey.currentState!.validate()) {
                  // Go to complete profile page...
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirm_password) {
          removeError(error: kMatchPassError);
        }
        confirm_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (password != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: "Confirm Password",
          hintText: "Re-enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
          // return; //
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }

  TextFormField buidEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty /* && errors.contains(kEmailNullError) */) {
          removeError(error: kEmailNullError);
          /* setState(() {
            removeError(error: kEmailNullError);
          }); */
          //  return;
        } else if (emailValidatorRegExp.hasMatch(value) /* &&
            errors.contains(kInvalidEmailError) */
            ) {
          removeError(error: kInvalidEmailError);
          /*  setState(() {
            removeError(error: kInvalidEmailError);
          }); */
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty /* && !errors.contains(kEmailNullError) */) {
          addError(error: kEmailNullError);
          /* setState(() {
            addError(error: kEmailNullError);
          }); */
          return "";
        } else if (!emailValidatorRegExp.hasMatch(
                value) /* &&
            !errors.contains(kInvalidEmailError) */
            ) {
          addError(error: kInvalidEmailError);
          /* setState(() {
            addError(error: kInvalidEmailError);
          }); */
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: "Email Adress",
          hintText: "Enter your email adress",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Mail.svg",
          )),
    );
  }
}
