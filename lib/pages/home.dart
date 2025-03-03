import 'package:crud/pages/employee.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Employee()),
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Firebase",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Tambahkan widget lain di sini jika diperlukan
          ],
        ),
      ), // AppBar
      body: Container(
        child: Column(
          children: [
            // Tambahkan widget di sini
          ],
        ),
      ), // Container
    ); // Scaffold
  }
}
