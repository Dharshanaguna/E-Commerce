import 'package:flutter/material.dart';
class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.maxFinite,
      height: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Column(
                children: List.generate(
                  2,
                      (index) => Container(
                    child: Row(
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.check_box_outline_blank_rounded),
                          ),
                        ),
                        SizedBox(width: 20),
                        Image.network(
                          'https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGNsb3RoZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                          height: 121,
                          width: 136,
                        ),SizedBox(width: 20,),
                        Column(
                          children: [
                            Text(
                              'Sweat Shirt',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),SizedBox(width: 20,),
                            // Row(
                            //   children: [
                            //     Expanded(
                            //       child: TextField(
                            //         onTap: () {},
                            //         decoration: InputDecoration(hintText: 'Color'),
                            //       ),
                            //     ),
                            //     SizedBox(width: 10),
                            //     Expanded(
                            //       child: TextField(
                            //         onTap: () {},
                            //         decoration: InputDecoration(hintText: 'L'),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            RichText(
                              text: TextSpan(
                                text: '49',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),SizedBox(height: 70),
            Column(
              children: [
                Row(children: [SizedBox(width: 45,),
                  Text('Shipping fee',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,fontFamily: 'Poppins',color:Color(0xff000000) )),
                  SizedBox(width: 130,),
                  Text('\$11',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,fontFamily: 'Poppins',color:Color(0xff000000) )),

                ],
                ),SizedBox(height: 25,),
                Row(children: [SizedBox(width: 45,),
                  Text('Subtotal',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,fontFamily: 'Poppins',color:Color(0xff000000) )),
                  SizedBox(width: 160,),
                  Text('\$89',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,fontFamily: 'Poppins',color:Color(0xff000000) )),
                ],
                ),
                SizedBox(height: 25,),
                Row(children: [SizedBox(width: 45,),
                  Text('Total',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,fontFamily: 'Poppins',color:Color(0xff000000) )),
                  SizedBox(width: 160,),
                  Text('\$100',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,fontFamily: 'Poppins',color:Color(0xff000000) )),
                ],
                ),
                SizedBox(height: 40,),
                Container(alignment: Alignment.center,child:ElevatedButton(onPressed:(){
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>()));
                }, child: Text('Checkout',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15)),style: ElevatedButton.styleFrom(primary: Colors.black,minimumSize: Size(274, 45)),
                )
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}