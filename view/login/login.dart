import 'package:ecomm/view/home/home.dart';
import 'package:ecomm/view/onboarding/onboarding_screen.dart';
import 'package:ecomm/view/register/register.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100), // Adjust the height to create space for the app bar
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Hello.\nWelcome Back',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Email',
              style: TextStyle(fontSize:16, fontWeight: FontWeight.w600, color:Colors.black ),

            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(decoration: InputDecoration(filled: true,fillColor: Color(0xffF3F3F3
            ),hintText: 'Enter your email id',enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.grey))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(decoration: InputDecoration(suffixText: 'Show',suffixStyle: TextStyle(color: Colors.black),filled: true,fillColor: Color(0xffF3F3F3
            ),hintText: 'Enter your Password',enabledBorder: OutlineInputBorder (borderSide: BorderSide(color: Colors.grey))),
            ),
          ),
          Padding(padding: const EdgeInsets.all(16),
              child:Container(
                  alignment: Alignment.topRight,
                  child: TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Checking(),)
                    );
                  }, child: const Text('Forgot Password?',style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic),
                  )
                  )
              )
          ),
          const SizedBox(
            height: 30,
          ),
          Container(alignment: Alignment.center,child:ElevatedButton(onPressed:(){
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
            child: Text('Login',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15)),style: ElevatedButton.styleFrom(primary: Colors.black,minimumSize: Size(319, 49)),
          )
          ),
          const SizedBox(height: 30,),
          Container(alignment: Alignment.center,
              child:ElevatedButton(onPressed:(){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));
              }, child: Text('Create Account',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black)),
                  style: ElevatedButton.styleFrom(primary: Color(0xffD5D5D5),minimumSize: Size(319, 49)
                  )
              )
          )
        ],

      ),
    );
  }
}

class Checking extends StatelessWidget {
   Checking({super.key});


   TextEditingController _codecontroller = TextEditingController();


   @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 100),
          Text('Enter your Email',style: TextStyle(fontFamily: 'Poppins',fontSize: 35,fontWeight: FontWeight.w600)),
          SizedBox(height: 10,),
          Text('Input a registered Email to receive a code',style: TextStyle(fontFamily: 'Poppins',fontSize: 15,fontWeight: FontWeight.w400)),SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Email',
              style: TextStyle(fontSize:15, fontWeight: FontWeight.w600, color:Colors.black ),

            ),
          ),SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: TextField(decoration: InputDecoration(suffixText: 'Send Code',suffixStyle: TextStyle(color: Colors.black),filled: true,fillColor: Color(0xffF3F3F3
            ),enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.grey))),
            ),


          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: 51,
                  height: 51,
                  margin: const EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff787878)),
                    borderRadius: BorderRadius.circular(5.0),

                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: '',
                      border: InputBorder.none,
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                    onChanged: (value) {
                      // Add your custom code for handling OTP input here
                    },
                  ),
                  // Add your custom code for handling OTP input here
                ),
            ],
          ),
          SizedBox(height: 50,),const SizedBox(height: 50,),
          Container(alignment: Alignment.center,
              child:ElevatedButton(onPressed:(){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AfterChecking()));
              }, child: Text('Confirm',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15,color: Colors.white)),
                  style: ElevatedButton.styleFrom(primary: Color(0xff0F0A1A),minimumSize: Size(319, 49)
                  )
              )
          )



          // Adjust the height to create space for the app bar
    ]
      )
    );
  }
}


class AfterChecking extends StatefulWidget {
  @override
  _AfterCheckingState createState() => _AfterCheckingState();
}

class _AfterCheckingState extends State<AfterChecking> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Set up a New \npassword',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'New Password',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              // obscureText: _obscureText,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Confirm Password',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              controller: _confirmPasswordController,
              obscureText: _obscureText,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please confirm the password';
                }
                if (value != _passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
              decoration: InputDecoration(suffixText: _obscureText?'Show':'Hide',
                filled: true,
                fillColor: Color(0xffF3F3F3),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnAccCreation()));
              },
              child: Text(
                'Confirm',
                style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff0F0A1A),
                minimumSize: Size(319, 49),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class OnAccCreation extends StatelessWidget {
  const OnAccCreation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [SizedBox(height: 30,),
        Image.network('https://plus.unsplash.com/premium_photo-1661764072587-0050cc57ac17?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c2hvcHBpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',height: 369,width: 428,),
        SizedBox(height: 30,),
        Center(child: Text('Congratulations on successfully creating an account with us!❤️‍🔥',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontSize: 30,fontWeight: FontWeight.w500,),
        ),
        ),
        SizedBox(height: 50,),
        Text("Welcome to our online community at STYLE . H! You're now part of our growing family, and we're thrilled to have you on board",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),textAlign: TextAlign.center,),
        const SizedBox(height: 50),
        Container(
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoarding()));
            },
            child: Text(
              'Confirm',
              style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff0F0A1A),
              minimumSize: Size(319, 49),
            ),
          ),
        ),


      ]
      ),
      
    );
  }
}



