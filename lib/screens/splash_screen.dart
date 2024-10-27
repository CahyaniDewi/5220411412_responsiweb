import 'package:flutter/material.dart';
import '../widgets/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToRegister();
  }

  _navigateToRegister() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacementNamed(context, '/register');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LogoWidget(),
            SizedBox(height: 20),
            Text('Loading Time 5 detik', style: TextStyle(fontSize: 20)),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushReplacementNamed(context, '/register');
            //   },
            //   child: Text('Go to Register'),
            // ),
          ],
        ),
      ),
    );
  }
}
