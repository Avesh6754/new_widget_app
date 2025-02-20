import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.white12,
        title: Text('Rive Animation',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: RiveAnimation.network(
          'https://cdn.rive.app/animations/vehicles.riv',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
