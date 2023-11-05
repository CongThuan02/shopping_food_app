import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ButtonTabBar extends StatefulWidget {
  final IconData icon;
  final String name;
  final bool isSelected;
  final Function()? onPressed;

  const ButtonTabBar(
      {super.key,
      required this.icon,
      required this.name,
      required this.isSelected,
      this.onPressed});

  @override
  State<ButtonTabBar> createState() => _ButtonTabBarState();
}

class _ButtonTabBarState extends State<ButtonTabBar> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              widget.isSelected == false ? Colors.white : Color(0xff1D2D50),
          elevation: 2,
          minimumSize: Size(74, 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: widget.onPressed,
        child: Row(
          children: [
            Icon(
              widget.icon,
              color:
                  widget.isSelected == false ? Color(0xff3E4462) : Colors.white,
            ),
            Text(
              " ${widget.name}",
              style: TextStyle(
                  color: widget.isSelected == false
                      ? Color(0xff3E4462)
                      : Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ));
  }
}
