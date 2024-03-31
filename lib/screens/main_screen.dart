import 'package:flutter/material.dart';

import 'auth.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 50)),
            Image.asset(
              'images/logo.png',
              width: 200,
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 50)),
            ElevatedButton(
              child: const Text('Войти'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AuthScreen())
                );
              },
            )
          ],
        ),
      )
    );
  }
  
}