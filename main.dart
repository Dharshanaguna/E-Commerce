import 'package:ecomm/view/cart/carts.dart';
import 'package:ecomm/view/dashboard/dashboard.dart';
import 'package:ecomm/view/home/home.dart';
import 'package:ecomm/view/onboarding/onboarding_screen.dart';
import 'package:ecomm/view/orders/orders.dart';
import 'package:ecomm/view/register/register.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

import 'view/login/login.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

runApp(MyApp());
}


  class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Register(),

        debugShowCheckedModeBanner: false
    );

  }
}