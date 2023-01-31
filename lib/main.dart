import 'package:flutter/material.dart';
import 'package:flutter_sample_app/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.yellow.shade100,
                  fontSize: 55,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'To LA Lakers Blog',
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              'images/lakersimage.png',
              height: 160,
              width: 320,
            ),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.deepPurple,
                elevation: 10,
                minimumSize: const Size(200, 45),
                side: const BorderSide(color: Colors.deepPurple, width: 2),
                shape: const StadiumBorder(),
              ),
              child: const Text('Log in'),
            ),
            const SizedBox(
              height: 5.0,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.deepPurple,
                elevation: 10,
                minimumSize: const Size(200, 45),
                side: const BorderSide(color: Colors.deepPurple, width: 2),
                shape: const StadiumBorder(),
              ),
              child: const Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}
