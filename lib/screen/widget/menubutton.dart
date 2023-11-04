import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  final IconData icon;
  final String name;

  const MenuButton({super.key, required this.icon, required this.name});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("object");
      },
      child: Column(
        children: [
          Container(
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              widget.icon,
              size: 24,
            ),
          ),
          Text(
            widget.name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
