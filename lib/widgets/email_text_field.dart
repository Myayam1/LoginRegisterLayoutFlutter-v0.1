import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool hasObsecure;

  const SignUpTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.hasObsecure,
  });

  @override
  _SignUpTextFieldState createState() => _SignUpTextFieldState();
}

class _SignUpTextFieldState extends State<SignUpTextField> {
  late bool isObsecured;

  @override
  void initState() {
    super.initState();
    isObsecured = widget.hasObsecure; // Properly initialize isObsecured
  }

  void _toggleObsecured() {
    setState(() {
      isObsecured = !isObsecured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: widget.controller,
        obscureText: isObsecured,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
            fontFamily: 'Lato',
          ),
          suffixIcon: widget.hasObsecure
              ? IconButton(
            onPressed: _toggleObsecured,
            icon: Icon(
              isObsecured
                  ? CupertinoIcons.eye
                  : CupertinoIcons.eye_slash,
              color: Colors.black45,
            ),
          )
              : null,
        ),
      ),
    );
  }
}
