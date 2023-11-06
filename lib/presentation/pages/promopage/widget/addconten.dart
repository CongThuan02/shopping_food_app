import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class AddConten extends StatefulWidget {
  const AddConten({super.key});

  @override
  State<AddConten> createState() => _AddContenState();
}

class _AddContenState extends State<AddConten> {
  bool isAdd = false;
  FocusNode focus = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    focus.dispose();
  }

  String valueDefault = "1";

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = valueDefault;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              child: const Image(
                  image: AssetImage(
                    "assets/images/img_1.png",
                  ),
                  width: 72,
                  height: 82,
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 72.0, left: 14),
              child: Container(
                width: 47,
                height: 28,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFF1E5F74),
                ),
                child: const Center(
                  child: Text(
                    "5 Left",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Multigrain Pizza",
                      style: TextStyle(
                        color: Color(0xFF3E4462),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                              ),
                            ],
                            borderRadius: BorderRadius.circular((20))),
                        child: const Center(
                          child: Icon(
                            Icons.favorite_border,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      '\$18.50',
                      style: TextStyle(
                        color: Color(0xFF7E7E7E),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: -0.24,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '22.500',
                      style: TextStyle(
                        color: Color(0xFFC9C9C9),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E5F74),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Symbols.percent,
                        size: 10,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Delivery discount up to 3K',
                      style: TextStyle(
                        color: Color(0xFF7E7E7E),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                isAdd == true
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                focus.requestFocus();
                              });
                            },
                            icon: const Icon(
                              Symbols.edit,
                              size: 36,
                            ),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Container(
                            width: 140,
                            color: const Color(0xFFF8F5F2),
                            child: TextFormField(
                              focusNode: focus,
                              controller: controller,
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: false,
                                // contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                prefixIcon: InkWell(
                                  onTap: () {},
                                  child: const Image(
                                    image: AssetImage("assets/images/tru.png"),
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {},
                                  child: const Image(
                                    image: AssetImage(
                                      "assets/images/cong.png",
                                    ),
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isAdd = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF1D2D50),
                                borderRadius: BorderRadius.circular(4)),
                            width: 82,
                            height: 36,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Symbols.add,
                                  size: 16,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Add',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
