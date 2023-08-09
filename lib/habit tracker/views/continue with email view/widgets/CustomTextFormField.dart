import 'package:flutter/material.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/constants.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final TextInputType keyboardType;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (s) {
        if (widget.controller.text.length <= 1) setState(() {});
      },
      obscureText: widget.obscureText ?? false,
      cursorColor: Colors.black,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        letterSpacing: .5,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
          color: kBlack20,
        ),
        suffixIcon: widget.controller.text.isNotEmpty
            ? IconButton(
                icon: Image.asset(
                  AssetsData.removeIcon1,
                ),
                onPressed: () {
                  setState(() {
                    widget.controller.clear();
                  });
                },
              )
            : null,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1.5,
            color: kGreen100,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kBlack20,
          ),
        ),
      ),
    );
  }
}
