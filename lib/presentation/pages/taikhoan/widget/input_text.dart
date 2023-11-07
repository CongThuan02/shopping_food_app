import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputText extends StatefulWidget {
  final String name;
  bool isPassword = false;
  final Function onChanged;
  final IconData iconData;
  final Function()? onTap;

  InputText({
    Key? key,
    required this.name,
    required this.isPassword,
    required this.onChanged,
    required this.iconData,
    this.onTap,
  }) : super(key: key);

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
            const Text(
              "*",
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
        SizedBox(
          height: 50,
          child: TextFormField(
            onChanged: (text) => widget.onChanged(text),
            obscureText: widget.isPassword,
            decoration: InputDecoration(
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    widget.isPassword = !widget.isPassword;
                  });
                },
                child: Icon(widget.iconData),
              ),
              hintText: widget.name,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
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
