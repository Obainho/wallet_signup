import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  PasswordField({Key? key, 
    required this.obscureText,
    required this.inputHint,
    required this.keyboardType,
  }) : super(key: key);

  final String inputHint;
  final TextInputType keyboardType;
  bool obscureText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 232, 233, 233),
      child: TextField(
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: widget.inputHint,
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          // enabledBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.black),
          // ),
          // focusedBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.blue),
          // ),
          suffixIcon: IconButton(
            splashRadius: 20,
            onPressed: () {
              setState(() {
                widget.obscureText = !widget.obscureText;
              });
            },
            icon: Icon(
              widget.obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
          ),
          suffixIconColor: Colors.black,
        ),
      ),
    );
  }
}


class InputTextField extends StatelessWidget {
  const InputTextField({Key? key, 
    required this.inputHint,
    required this.keyboardType,
    required this.controller
  }) : super(key: key);

  final String inputHint;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 232, 233, 233),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: inputHint,
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          // enabledBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.black),
          // ),
          // focusedBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.blue),
          // ),
        ),
      ),
    );
  }
}