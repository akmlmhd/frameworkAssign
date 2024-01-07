import 'package:flutter/material.dart';
import './widgets/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 98, 176),
      appBar: AppBar(
        title: Text('Uni Emergency Hub'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              width: 400,
              height: 200, 
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome Students !!!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 33, 186, 61),
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Let\'s Get Started',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your safety is our responsibility',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            Row( // make icon beside the text
             mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.security,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '24/7 Security Monitoring',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
            )
          ],
        ),
      ),
    );
  }
}
