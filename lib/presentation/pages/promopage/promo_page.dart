import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:shopping_food_app/domain/entities/menu.dart';
import 'package:shopping_food_app/presentation/pages/promopage/widget/contens.dart';

import '../../widgets/buttontabbar.dart';

@RoutePage()
class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  List<Menu> menu = [
    Menu(name: "Filters", icon: Symbols.page_info, isSelect: true),
    Menu(name: "Nearby", icon: Symbols.near_me, isSelect: false),
    Menu(name: "Above 4.5", icon: Symbols.star, isSelect: false),
    Menu(name: "Cheapest", icon: Symbols.sell, isSelect: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            context.popRoute();
          },
          icon: const Icon(
            Symbols.arrow_back_ios,
            size: 24,
            color: Color(0xff1D2D50),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Today’s Promo",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 26,
            color: Color(0xff3E4462),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      // color: Colors.white,
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (int i = 0; i < menu.length; i++) ...[
                            const SizedBox(
                              width: 16,
                            ),
                            ButtonTabBar(
                              icon: menu[i].icon,
                              name: "${menu[i].name}",
                              isSelected: menu[i].isSelect,
                              onPressed: () {
                                setState(
                                  () {
                                    for (int i = 0; i < menu.length; i++) {
                                      menu[i].isSelect = false;
                                    }
                                    menu[i].isSelect = !menu[i].isSelect;
                                  },
                                );
                              },
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Contens(),
            const Contens(),
            const Contens(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 89,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF1D2D50),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1 item',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: -0.24,
                  ),
                ),
                Text(
                  'Checkout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                    letterSpacing: -0.24,
                  ),
                ),
                Text(
                  ' \$18.50',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: -0.24,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
