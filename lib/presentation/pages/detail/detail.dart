import 'package:auto_route/annotations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../promopage/widget/contens.dart';

@RoutePage()
class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  CarouselController controller = CarouselController();
  List itemsList = [
    "assets/images/logonhahang.png",
    "assets/images/logonhahang.png",
    "assets/images/logonhahang.png",
    "assets/images/logonhahang.png",
    "assets/images/logonhahang.png"
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  initialPage: 0,
                  onPageChanged: (index, _) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: itemsList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(i), fit: BoxFit.cover)),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 150.0,
                left: MediaQuery.of(context).size.width * 0.4,
              ),
              child: DotsIndicator(
                dotsCount: itemsList.length,
                position: _current,
                decorator: const DotsDecorator(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180.0, left: 16, right: 16),
              child: Container(
                height: 168,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Delics Fruit Salad',
                      style: TextStyle(
                        color: Color(0xFF3E4462),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Jl. Jaya katwang no 4, Ngasem',
                      style: TextStyle(
                        color: Color(0xFF7E7E7E),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Open',
                          style: TextStyle(
                            color: Color(0xFF3E4462),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.10,
                            letterSpacing: -0.24,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          '8 am - 8 pm',
                          style: TextStyle(
                            color: Color(0xFF7E7E7E),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 75.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            '1 km',
                            style: TextStyle(
                              color: Color(0xFF3E4462),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.14,
                              letterSpacing: -0.24,
                            ),
                          ),
                          Icon(Icons.star_border),
                          Text(
                            '5.0',
                            style: TextStyle(
                              color: Color(0xFF3E4462),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.14,
                              letterSpacing: -0.24,
                            ),
                          ),
                          Icon(Icons.check_circle_outline),
                          Text(
                            'Verified',
                            style: TextStyle(
                              color: Color(0xFF3E4462),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.14,
                              letterSpacing: -0.24,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 380.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Menu items fsef fsef',
                                style: TextStyle(
                                  color: Color(0xFF3E4462),
                                  fontSize: 18,
                                  fontFamily: 'Poppins fsef fáe ',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: Text("d"),
                              )
                            ],
                          ),
                          Text(
                            'Reviews',
                            style: TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Info',
                            style: TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Contens(),
                  ],
                ),
              ),
            )
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
