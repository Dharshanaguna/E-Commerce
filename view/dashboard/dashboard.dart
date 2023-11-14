import 'package:ecomm/view/cart/carts.dart';
import 'package:ecomm/view/home/home.dart';
import 'package:ecomm/view/orders/orders.dart';
import 'package:ecomm/view/profile/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static final List<Map<String, dynamic>> _pagesOptions = <Map<String, dynamic>>[
    {
      "page": HomeScreen(),
      "appbar": AppBar(title: Text('Home'),backgroundColor: Colors.black),
    },
    {
      "page": CartScreen(),
      "appbar": AppBar(title: Text('My Cart'),backgroundColor: Colors.black),
    },
    {
      "page": OrderScreen(), // Dummy page for Orders
      "appbar": AppBar(title: Text('My Orders'),backgroundColor: Colors.black),
    },
    {
      "page": ProfileScreen(),
      "appbar": AppBar(title: Text('My Profile'),backgroundColor: Colors.black),
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _pagesOptions.elementAt(_selectedIndex)["appbar"],
      body: Container(
        child: _pagesOptions.elementAt(_selectedIndex)["page"],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
