import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isNotificationOn = true;

    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Saya'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Placeholder image for profile
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Notifikasi'),
              trailing: Switch(
                value: isNotificationOn,
                onChanged: (bool value) {
                  // Handle notification toggle
                },
              ),
            ),
            ListTile(
              title: Text('Kelola Akun'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, '/manage_account');
              },
            ),
          ],
        ),
      ),
    );
  }
}
