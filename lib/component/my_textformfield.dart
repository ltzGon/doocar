import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MytextField extends StatelessWidget {
  const MytextField(
      {super.key,
      required this.Controller,
      required this.hintText,
      required this.obscureText,
      required this.labelText});
  final Controller;
  final String hintText;
  final bool obscureText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: Controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          suffix: const Icon(
            FontAwesomeIcons.envelope,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 252, 252, 252)),
            gapPadding: 10,
          ),
        ),
        cursorColor: Colors.black,
      ),
    );
  }
}
