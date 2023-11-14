import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width:double.maxFinite,
          height: double.maxFinite,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [Padding(padding: EdgeInsets.all(16.0)),
              SizedBox(height: 10,),
            Align(alignment: Alignment.topRight),
        IconButton(onPressed: (){}, icon: Icon(Icons.card_giftcard_outlined,)),
            SizedBox(height: 10,),
            Row(children: [
              Expanded(child:
              Container(width: 369,height:47 ,child: TextFormField(decoration:
              const InputDecoration(filled: true,fillColor: Color(0xE7E7E7
              ),
                prefixIcon: Icon(Icons.search_outlined),
                suffixIcon: Icon(Icons.camera_alt_sharp),
                hintText: 'Search',enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xffE7E7E7),
                )
                ),
              ),
              ),
              )
              ),SizedBox(width: 10,),
              Container(width:48 ,height:47 ,decoration: BoxDecoration(border: Border.all(
                color: Color(0xffE7E7E7)),borderRadius: BorderRadius.circular(4)
              ),
                child: IconButton(onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Filter()));
                } ,icon: Icon(Icons.filter_list,),
              ),
              ),
              ],
            ),

            SizedBox(height: 10,),

            Container(
              margin: EdgeInsets.all(10),
              child: const Text('Brands',style: TextStyle(color: Color(0xff000000),fontSize: 15,fontFamily:'Poppins' ,fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 5),
            Row(

              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 47,
                  width: 48,
                  padding: EdgeInsets.all(14),
                  child: Text('All',style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff0F0A1A)

                  ),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height:47 ,
                  width: 116,
                  padding: EdgeInsets.all(13),
                  child: Text('Gucci',style: TextStyle(color: Colors.black),textAlign: TextAlign.center),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffE7E7E7)
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(7),
                  height: 47,
                  width: 116,
                  padding: EdgeInsets.all(13),
                  child: Text('Proda',style: TextStyle(color: Colors.black),textAlign: TextAlign.center),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffE7E7E7)
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  height: 47,
                  width: 72,
                  padding: EdgeInsets.all(12),
                  child: Text('Trocks',style: TextStyle(color: Colors.black),textAlign: TextAlign.center),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffE7E7E7)
                    ),
                ),

              ],
            ),SizedBox(height: 5,),
            Row(
              children: [
                Container(margin: EdgeInsets.all(10),
                  child: TextButton(onPressed: () {

                  }, child: Text('Featured products',style: TextStyle(color: Color(0xff000000),fontSize: 15,fontFamily:'Poppins' ,fontWeight: FontWeight.w400),

                  )
      ),
                ),SizedBox(width: 150),
                Container(margin: EdgeInsets.all(10),
                  child: TextButton(onPressed: (){}, child: Text('See all',
                    style: TextStyle(color: Color(0xff000000),fontSize: 15,fontFamily:'Poppins' ,fontWeight: FontWeight.w400),
                  ),
                ),
      ),
      ]

            ),
              Row(
                children: [
                  Container(margin: EdgeInsets.all(10),
                    child: Column(
                        children: [
                          Image.network('https://images.unsplash.com/photo-1523381294911-8d3cead13475?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNsb3RoZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',width: 184,height:223 ,),
                          Container(child: const Column(
                              children: [
                              Text('Polo',style: TextStyle(fontWeight: FontWeight.w400,fontSize:12,fontFamily: 'Poppins',color: Color(0xff000000),
                              )
                          ),
                              Text('89',style: TextStyle(fontWeight: FontWeight.w600,fontSize:12,fontFamily: 'Poppins',color: Color(0xff000000),
                              )
                              ),
                                  ],
              ),

                          )
                ]
              ),
                  ),SizedBox(width: 10,),
          Column(
            children: [
            Image.network('https://images.unsplash.com/photo-1523381294911-8d3cead13475?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNsb3RoZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',width: 184,height:223 ,),
          Container(child: const Column(
              children: [
                Text('Polo',style: TextStyle(fontWeight: FontWeight.w400,fontSize:12,fontFamily: 'Poppins',color: Color(0xff000000),
                )
                ),
                Text('89',style: TextStyle(fontWeight: FontWeight.w600,fontSize:12,fontFamily: 'Poppins',color: Color(0xff000000),
                )
                ),

                ]
          )    )
      ]
      )
      ]
              ),
            Row(
                children: [
                  Container(margin: EdgeInsets.all(10),
                    child: Column(
                        children: [
                          Image.network('https://images.unsplash.com/photo-1523381294911-8d3cead13475?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNsb3RoZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',width: 184,height:223 ,),
                          Container(child: const Column(
                            children: [
                              Text('Polo',style: TextStyle(fontWeight: FontWeight.w400,fontSize:12,fontFamily: 'Poppins',color: Color(0xff000000),
                              )
                              ),
                              Text('89',style: TextStyle(fontWeight: FontWeight.w600,fontSize:12,fontFamily: 'Poppins',color: Color(0xff000000),
                              )
                              ),
                            ],
                          ),

                          )
                        ]
                    ),
                  ),SizedBox(width: 10,),
                  Column(
                      children: [
                        Image.network('https://images.unsplash.com/photo-1523381294911-8d3cead13475?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNsb3RoZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',width: 184,height:223 ,),
                        Container(child: Column(
                            children: [
                              Text('Polo',style: TextStyle(fontWeight: FontWeight.w400,fontSize:12,fontFamily: 'Poppins',color: Color(0xff000000),
                              )
                              ),
                              Text('89',style: TextStyle(fontWeight: FontWeight.w600,fontSize:12,fontFamily: 'Poppins',color: Color(0xff000000),
                              )
                              ),

                            ]
                        )    )
                      ]
                  )
                ]
            )
      ]
          )
        );

  }
}

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

