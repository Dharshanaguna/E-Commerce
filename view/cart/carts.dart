import 'package:flutter/material.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
      child: Column(
      children: [
      SizedBox(
      child: Column(
    children: List.generate(
    6,
          (index) => SizedBox(
        height: 150,
        child: Row(
          children: [
            SizedBox(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.check_box_outline_blank_rounded),
              ),
            ),
            Image.network(
              'https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGNsb3RoZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
              height: 121,
              width: 136,
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sweat Shirt',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 5),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFEEEEEE),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 0.50,
                                    strokeAlign:
                                    BorderSide.strokeAlignOutside,
                                    color: Color(0xFFB5B5B5),
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(3),
                                ),
                              ),
                              child: const Text(
                                "Color",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 5),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFEEEEEE),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 0.50,
                                    strokeAlign:
                                    BorderSide.strokeAlignOutside,
                                    color: Color(0xFFB5B5B5),
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(3),
                                ),
                              ),
                              child: const Text(
                                "L",
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        RichText(
                          text: const TextSpan(
                              text: '\$',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: '49',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                )),
            Container(
              margin: const EdgeInsets.all(20),
              width: 48,
              height: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0x1CFF0000),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xD6FF6767),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    ),
    ),
    ),
    const SizedBox(height: 70),
    Column(
    children: [
    const Row(
    children: [
    SizedBox(
    width: 45,
    ),
    Text('Shipping fee',
    style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    fontFamily: 'Poppins',
    color: Color(0xff000000))),
    SizedBox(
    width: 130,
    ),
    Text('\$11',
    style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    fontFamily: 'Poppins',
    color: Color(0xff000000))),
    ],
    ),
    const SizedBox(
    height: 25,
    ),
    const Row(
    children: [
    SizedBox(
    width: 45,
    ),
    Text('Subtotal',
    style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    fontFamily: 'Poppins',
    color: Color(0xff000000))),
    SizedBox(
    width: 160,
    ),
    Text('\$89',
    style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    fontFamily: 'Poppins',
    color: Color(0xff000000))),
    ],
    ),
    const SizedBox(
    height: 25,
    ),
    const Row(
    children: [
    SizedBox(
    width: 45,
    ),
    Text('Total',
    style: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    fontFamily: 'Poppins',
    color: Color(0xff000000))),
    SizedBox(
    width: 160,
    ),
    Text('\$100',
    style: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    fontFamily: 'Poppins',
    color: Color(0xff000000))),
    ],
    ),
    const SizedBox(
    height: 40,
    ),
    Container(
    alignment: Alignment.center,
    child: ElevatedButton(
    onPressed: () {
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>()));
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    minimumSize: const Size(274, 45)),
    child: const Text('Checkout',
    style: TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 15)),
    )
    ),
      ]
    )
        ]
    )
      )
    );
  }
}