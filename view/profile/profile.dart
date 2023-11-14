import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              // Add your profile image here
              backgroundImage: NetworkImage(
                  'https://example.com/path_to_your_profile_image.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'User Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'
              ),
            ),
            SizedBox(height: 8),
            Text(
              'username@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                  fontFamily: 'Poppins'
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Account Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'
              ),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Edit Profile',style: TextStyle(fontFamily: 'Poppins')),
              onTap: () {
                // Handle edit profile action
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Change Password',style: TextStyle(fontFamily: 'Poppins')),
              onTap: () {
                // Handle change password action
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Manage Addresses',style: TextStyle(fontFamily: 'Poppins')),
              onTap: () {
                // Handle manage addresses action
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Payment Methods',style: TextStyle(fontFamily: 'Poppins')),
              onTap: () {
                // Handle payment methods action
              },
            ),
            SizedBox(height: 16),
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'
              ),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications',style: TextStyle(fontFamily: 'Poppins'),),
              onTap: () {
                // Handle notifications action
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language',style: TextStyle(fontFamily: 'Poppins'),),
              onTap: () {
                // Handle language action
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout',style: TextStyle(fontFamily: 'Poppins'),),
              onTap: () {
                // Handle logout action
              },
            ),
          ]
    );
  }
}
