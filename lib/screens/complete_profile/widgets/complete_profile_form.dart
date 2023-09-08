import 'package:e_commerce_app/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
import '../../../widget/custom_suffi_icon.dart';
import '../../../widget/default_button.dart';
import '../../../widget/form_error.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

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
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstnameFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildLastnameFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30),),
          DefaultButton(text: "Continue", press: () {
            if (_formKey.currentState!.validate()) {
              // Go to OTP screen
              Navigator.pushNamed(context, OtpScreen.routeName);
            }
          }),
          SizedBox(height: getProportionateScreenHeight(30),),

        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
          onSaved: (newValue) => address = newValue!,
          onChanged: (value) {
            if (value.isNotEmpty) {
                removeError(error: kAddressNullError);
             /*  return;
            } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError); */
            }
            return;
          },
          validator: (value) {
            if (value!.isEmpty) {
                addError(error: kAddressNullError);
              return "";
            } /* else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kNamelNullError);
              return "";
            } */
            return null;
          },
          decoration: const InputDecoration(
              labelText: "Address",
              hintText: "Enter your address",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/Location point.svg",
              )),
        );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
          keyboardType: TextInputType.phone,
          onSaved: (newValue) => phoneNumber = newValue!,
          onChanged: (value) {
            if (value.isNotEmpty) {
                removeError(error: kPhoneNumberNullError);
             /*  return;
            } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kPhoneNumberNullError); */
            }
            return;
          },
          validator: (value) {
            if (value!.isEmpty) {
                addError(error: kPhoneNumberNullError);
              return "";
            } /* else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kPhoneNumberNullError);
              return "";
            } */
            return null;
          },
          decoration: const InputDecoration(
              labelText: "Phone Number",
              hintText: "Enter your phone number",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/Phone.svg",
              )),
        );
  }

  TextFormField buildLastnameFormField() {
    return TextFormField(
          keyboardType: TextInputType.name,
          onSaved: (newValue) => lastName = newValue!,
          /* onChanged: (value) {
            if (value.isNotEmpty) {
                removeError(error: kNamelNullError);
             /*  return;
            } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError); */
            }
            return;
          },
          validator: (value) {
            if (value!.isEmpty) {
                addError(error: kNamelNullError);
              return "";
            } /* else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kNamelNullError);
              return "";
            } */
            return null;
          }, */
          decoration: const InputDecoration(
              labelText: "Lastname",
              hintText: "Enter your lastname",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/User.svg",
              )),
        );
  }

  TextFormField buildFirstnameFormField() {
    return TextFormField(
          keyboardType: TextInputType.name,
          onSaved: (newValue) => firstName = newValue!,
          onChanged: (value) {
            if (value.isNotEmpty) {
                removeError(error: kNamelNullError);
             /*  return;
            } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError); */
            }
            return;
          },
          validator: (value) {
            if (value!.isEmpty) {
                addError(error: kNamelNullError);
              return "";
            } /* else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kNamelNullError);
              return "";
            } */
            return null;
          },
          decoration: const InputDecoration(
              labelText: "Firstname",
              hintText: "Enter your firstname",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/User.svg",
              )),
        );
  }
}