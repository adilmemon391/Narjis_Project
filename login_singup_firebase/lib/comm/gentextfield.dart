// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class gentextfield extends StatelessWidget {
  TextEditingController? controller;
  String? labeltext;
  IconData? icon;
  bool isObscreText;
  TextInputType? inputType;
  bool isEnable;

  gentextfield(
      {super.key,
      this.controller,
      this.labeltext,
      this.icon,
      this.isObscreText = false,
        this.inputType=TextInputType.text,
        this.isEnable=false});

  @override
  validateEmail(String email){
    final emailReg= new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_'{|}~-]+@[a-zA-Z0-9-]{0,253}[a-zA-Z0-9]?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return emailReg.hasMatch(email);
  }
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      controller: controller,
      obscureText: isObscreText,
      validator: ((value) {
        if (value!.trim().isEmpty) {
          return "Please enter $labeltext";
        }
        if(labeltext=='Email'&& !validateEmail(value)){
          return "Please enter valid Email";

        }

        return null;
      }),


      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.blue,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        labelText: labeltext,
      ),
    );
  }
}
