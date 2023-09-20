import 'package:eliascalc/colors.dart';
import 'package:flutter/material.dart';

class IntField extends StatelessWidget {
  const IntField({super.key, required this.title, required this.controler});

  final String title;
  final TextEditingController controler;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controler,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(darkBgdark),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(primarydark)),
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: title,
        label: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Inter",
          ),
        ),
        hintStyle: const TextStyle(
          color: Color(0xFF616B7C),
        ),
        filled: true,
        fillColor: Color(darkBglight),
        focusColor: Color(darkBglight),
      ),
      style: const TextStyle(fontFamily: "Inter", color: Colors.white),
    );
  }
}
