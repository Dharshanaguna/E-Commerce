import 'package:ecomm/view/login/login.dart';
import 'package:ecomm/view/register/register.dart';
import 'package:flutter/material.dart';


class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: [SizedBox(height: 50,),Container(alignment: Alignment.topRight,child: TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));

              }, child: Text('Login',style: TextStyle(fontFamily:'Poppins',color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),))),SizedBox(height: 40),Text(
              'Where Style Meets Convenience',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),SizedBox(height: 50,),
              Image.network('https://media.istockphoto.com/id/901863672/photo/clothes-shop-interior.webp?b=1&s=170667a&w=0&k=20&c=pBV35z76B9UsW5odchHj5CiyCElXMUTbjDyToYAzOpA=',height: 256,width: 368),SizedBox(height: 15,),
              Container(
                width: 200,height: 4,
                  child:Row(children: [
                  Expanded( flex:1,child: Container(color: Colors.black,)
                  ),
                Expanded(flex:1,child: Container(color: Colors.grey,)
                ),
                  Expanded(flex:2,child: Container(color: Colors.grey,)
                  ),

                    ],

              )
              ),SizedBox(height: 50,),

              Text('\n Experience Seamless Online Shopping with a Wide Range of Fashion Essentials at STYLE.H', style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Poppins'),
              ),SizedBox(height: 50),ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));
                },child:Text('Create Account',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15,color: Colors.white)
              ),style: ElevatedButton.styleFrom(primary: Colors.black,minimumSize: Size(319, 49)
              )
          )

            ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
                children:[SizedBox(height: 50),Container(alignment: Alignment.topRight,child: TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                    child: Text('Login',style: TextStyle(fontFamily:'Poppins',color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),))),SizedBox(height: 40),Container(alignment: Alignment.bottomLeft,child: Text(
                'Your Fashion \nDestination',
                style: TextStyle(fontSize: 30, color: Colors.black,fontFamily: 'Poppins'),
            )),SizedBox(height: 40,),
              Image.network('https://media.istockphoto.com/id/1368965716/photo/life-style-concept-with-milenial-friends-walking-together-at-old-town-center-happy-guys-and.jpg?s=612x612&w=is&k=20&c=iKbLg6VzKvCdCFRLZ9nLqUamIo2bHgOBWUVPcLQjzgo=',height: 256,width: 368),SizedBox(height: 10,),
              Container(
                width: 200,height: 4,child:Row(children: [
                Expanded( flex:1,child: Container(color: Colors.grey,)
                ),
                Expanded(flex:1,child: Container(color: Colors.grey,)
                ),

                    Expanded(flex:2,child: Container(color: Colors.black,)
                ),

                Expanded(flex:3,child: Container(color: Colors.grey,)
                ),

              ],

              ),
              ),SizedBox(height: 50,),
                  Text('Explore Endless Fashion Possibilities and Elevate Your Style with STYLE . H',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),SizedBox(height: 50,),ElevatedButton(onPressed: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));

                  }, child:Text('Create Account',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15,color: Colors.white)
          ),style: ElevatedButton.styleFrom(primary: Colors.black,minimumSize: Size(319, 49)
          ),)
            ]
            ),
          ),

          Container(
            color: Colors.white,
            child: Column(children: [SizedBox(height: 50),Container(alignment: Alignment.topRight,child: TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));

            }, child: Text('Login',style: TextStyle(fontFamily:'Poppins',color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),))),SizedBox(height: 40),Container(alignment: Alignment.bottomLeft,child:Text(
                'Fashion for Every \nOccasion',
                style: TextStyle(fontSize: 30, color: Colors.black,fontFamily: 'Poppins'),
              )),SizedBox(height: 50,),
              Image.network('https://images.unsplash.com/photo-1583316174775-bd6dc0e9f298?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGxpZmVzdHlsZSUyMGZhc2hpb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',height: 256,width: 368),SizedBox(height: 15,),
              Container(
                width: 200,height: 4,child:Row(children: [
                Expanded( flex:1,child: Container(color: Colors.grey,)
                ),
                Expanded(flex:2,child: Container(color: Colors.grey,)
                ),
                Expanded(flex:2,child: Container(color: Colors.grey,)),

                    Expanded(flex:3,child: Container(color: Colors.black,)
                ),
                Expanded(flex:3,child: Container(color: Colors.grey,)
                ),
              ],
              )
              ),
              SizedBox(height: 50,),
              Text('Find the Perfect Outfit for Any Occasion and Express Your Style with STYLE . H',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),SizedBox(height: 50,),ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));

              }, child:Text('Create Account',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15,color: Colors.white)
          ),style: ElevatedButton.styleFrom(primary: Colors.black,minimumSize: Size(319, 49)
          ),)

              ]
            ),
          ),

          Container(
            color: Colors.white,
            child: Column(children: [SizedBox(height: 50),Container(alignment: Alignment.topRight,child: TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));

            }, child: Text('Login',style: TextStyle(fontFamily:'Poppins',color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),))),SizedBox(height: 40),Text(
                'Unlock Your Fashion Potential',
                style: TextStyle(fontSize: 30, color: Colors.black,fontFamily: 'Poppins'),
              ),SizedBox(height: 50,),
              Image.network('https://media.istockphoto.com/id/1195041781/photo/this-is-how-you-sign-up-and-receive-amazing-offers.webp?b=1&s=170667a&w=0&k=20&c=chpWydWG2XhmB77P1VQJaR3yEFzgG5rGOwpmaJxzOII=',height:256 ,width: 368),SizedBox(height: 15,),
              Container(
                width: 200,height: 4,child:
              Row(children: [
                Expanded( flex:1,child: Container(color: Colors.grey,)
                ),
                Expanded(flex:2,child: Container(color: Colors.grey,)
                ),
                Expanded(flex:3,child: Container(color: Colors.grey,)
                ),
                Expanded(flex:3,child: Container(color: Colors.grey,)),

                    Expanded(flex:3,child: Container(color: Colors.black,)
                ),

              ],

              )),
              SizedBox(height: 50,),
              Text('Discover Your Unique Style and Shop the Latest Fashion Trends with Confidence at STYLE . H',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),SizedBox(height: 50,),ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));

              }, child:Text('Create Account',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15,color: Colors.white)
          ),style: ElevatedButton.styleFrom(primary: Colors.black,minimumSize: Size(319, 49)
          ))
            ]
            ),
          ),
        ],
      ),
    );
  }
}
