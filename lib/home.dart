import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          "IEEE SIGHT ISIMM SB",
          style: TextStyle(
              color: Colors.white, fontSize: 10, fontFamily: 'EBGaramond'),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Start your smart home"),
            const SizedBox(height: 20.0),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/5.png'),
            ),
            const SizedBox(height: 20.0),
            Text(
              "Let's GO !",
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontFamily: 'EBGaramond',
                  fontSize: 40),
            ),
            const SizedBox(height: 10.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 10.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Ajoutez votre logique de connexion ici
              },
              child: const Text('LOG IN'),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Don't have an account yet! Create an account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
