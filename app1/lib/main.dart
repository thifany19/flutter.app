import 'package:app1/screens/search.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Primer Proyecto mp"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()));
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Mi Gato',
                style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 230, 85, 235)
                    ),
              ),
              const SizedBox(height: 20,),
              Image.asset('assets/images/Gato.jpg',width: 300, height: 200,),
            ]
            ),
      ),
    );
  }
}
