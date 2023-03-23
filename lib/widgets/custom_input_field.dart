import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscuredText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscuredText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscuredText,
        onChanged: (value) => formValues[formProperty] = value,
        validator: (value) {
          if (value == null) return 'este campo es requerido';
          return value.length < 3 ? 'minimo 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          counterText: '3 caracteres',
          // prefixIcon: Icon(Icons.verified_user_outlined),//

          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
          // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(10),
          //     topRight: Radius.circular(10),
          //     )
          // )
        ));
  }
}
