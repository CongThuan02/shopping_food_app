import 'package:flutter/material.dart';

class ViewConten extends StatefulWidget {
  const ViewConten({super.key});

  @override
  State<ViewConten> createState() => _ViewContenState();
}

class _ViewContenState extends State<ViewConten> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 323,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage("assets/images/img.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                width: 35,
                height: 35,
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_border,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 268,
              height: 101,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16, bottom: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Title(
                        color: const Color(0xFF3E4462),
                        child: const Text(
                          "Italian Pizza",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF3E4462),
                          ),
                        ),
                      ),
                      const Text(
                        "Delics Italian pizza with chess ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF7E7E7E),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.attach_money_outlined,
                                size: 14,
                              ),
                              Text('18.50'),
                              Text(
                                " 22.500",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFCACACA),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: InkWell(
                              onTap: () {
                                //print("Đã mua");
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: const Color(0xFF1E5F74),
                                ),
                                width: 47,
                                height: 28,
                                child: const Center(
                                  child: Text(
                                    "5Left",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
