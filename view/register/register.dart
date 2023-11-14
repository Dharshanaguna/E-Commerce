import 'package:ecomm/view/home/home.dart';
import 'package:ecomm/view/login/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Welcome.\nSetup your account',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 0.5),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              controller: _nameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                hintText: 'Enter your name',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              controller: _emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                hintText: 'Enter your email',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Password',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              controller: _passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                hintText: 'Enter your password',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Confirm Password',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              controller: _confirmPasswordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please confirm your password';
                }
                if (value != _passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                hintText: 'Confirm your password',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: _register,
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: Size(319, 49),
              ),
              child: const Text(
                'Create Account',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _register() async {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        // Registration successful, navigate to the next page or perform other actions
      } catch (e) {
        // Registration failed, handle the error
        print('Registration error: $e');
      }
    }
  }
}


class Verify extends StatelessWidget {
  Verify({super.key});


  TextEditingController _codecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 100),
        Text('Verify your Email',style: TextStyle(fontFamily: 'Poppins',fontSize: 35,fontWeight: FontWeight.w600)),
        SizedBox(height: 10,),
        Text('Check your inbox to verify your email',style: TextStyle(fontFamily: 'Poppins',fontSize: 15,fontWeight: FontWeight.w400)),SizedBox(height: 40,),
        Padding(
        padding: EdgeInsets.all(5.0),
    child: Text(
    'Email',
    style: TextStyle(fontSize:15, fontWeight: FontWeight.w600, color:Colors.black ),

    ),
        ),SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.0),
                child: TextField(decoration: InputDecoration(filled: true,fillColor: Color(0xffF3F3F3
                ),enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.grey))),
                ),


              ),
              const SizedBox(
                height: 30,
              ),
              Container(alignment: Alignment.center,child:ElevatedButton(onPressed:(){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Checking()));
              }, child: Text('Verify',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15)),style: ElevatedButton.styleFrom(primary: Colors.black,minimumSize: Size(319, 49)),
              )
              ),
              const SizedBox(height: 30,),
              Container(alignment: Alignment.center,
                  child:ElevatedButton(onPressed:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));
                  }, child: Text('Skip',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black)),
                      style: ElevatedButton.styleFrom(primary: Color(0xffD5D5D5),minimumSize: Size(319, 49)
                      )
                  )
              )
    ]
        )
    );
    }
  }