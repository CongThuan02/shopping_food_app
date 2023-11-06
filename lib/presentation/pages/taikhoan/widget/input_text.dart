import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String name;
  final bool isPassword;
  final Function onChanged;

  const InputText(
      {super.key,
      required this.name,
      required this.isPassword,
      required this.onChanged});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(widget.name),
            Text(
              "*",
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
        Container(
          height: 50,
          child: TextFormField(
            onChanged: (text) => widget.onChanged(text),
            obscureText: widget.isPassword,
            decoration: InputDecoration(
              hintText: widget.name,
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
