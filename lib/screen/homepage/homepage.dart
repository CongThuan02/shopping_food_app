import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widget/menubutton.dart';
import '../widget/viewconten.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 68,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(232, 76, 79, 0.20),
                  ),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        "Jl . Jayakatwang no 301",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(126, 126, 126, 1),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromRGBO(126, 126, 126, 1),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("object");
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1D2D50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Hello, Yahya",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3E4462),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "What do you want to eat?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF3E4462),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuButton(
                  icon: Icons.favorite_border,
                  name: 'Favorite',
                ),
                MenuButton(
                  icon: Icons.tag,
                  name: 'Cheap',
                ),
                MenuButton(
                  icon: Icons.trending_up,
                  name: 'Trend',
                ),
                MenuButton(
                  icon: Icons.more_horiz,
                  name: 'More',
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Today’s promo",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3E4462),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3E4462),
                      ),
                    ))
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 323,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ViewConten(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ViewConten(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ViewConten(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ViewConten(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ViewConten(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 79,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home_outlined)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.person_2_outlined))
          ],
        ),
      ),
    );
  }
}
