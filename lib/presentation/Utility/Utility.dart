import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
PinTheme pincode() {
  return PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(8),
    fieldHeight: 50,
    fieldWidth: 50,

    activeColor: Color(0xFF009688),     // teal border
    inactiveColor: Color(0xFF009688),   // teal border
    selectedColor: Color(0xFF009688),

    activeFillColor: Colors.white,
    inactiveFillColor: Colors.white,
    selectedFillColor: Colors.white,

    borderWidth: 1.5,
  );
}