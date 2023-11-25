import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_food_app/config/route/route_imports.gr.dart';

import 'addconten.dart';

class Contens extends StatefulWidget {
  const Contens({super.key});

  @override
  State<Contens> createState() => _ContensState();
}

class _ContensState extends State<Contens> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                        ),
                        onPressed: () {
                          context.pushRoute(DetailRoute());
                        },
                        child: const Text(
                          "Delics Italian Pizza",
                          style: TextStyle(
                            color: Color(0xFF3E4462),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.star_border),
                          Text(
                            "5.0",
                            style: TextStyle(
                              color: Color(0xFF3E4462),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ZindaBa zar, Sylhet",
                        style: TextStyle(
                          color: Color(0xFF7E7E7E),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                          letterSpacing: -0.24,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "1 Km",
                        style: TextStyle(
                          color: Color(0xFF7E7E7E),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(
                    thickness: 4,
                    color: Color(0xFFEFEFF2),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
              const AddConten(),
              const SizedBox(
                height: 26,
              ),
              const AddConten(),
            ],
          ),
        ),
      ),
    );
  }
}
