import 'package:ecommerce/HomePage/header.dart';
import 'package:ecommerce/HomePage/specialDeal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children:  [
            Image.asset('assets/images/logo.png',
              height: 50,
              width: 50,
            ),
          ],
        ),
        title: Row(
          children: [
            Text('Location',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF2E3192)
              ),
            ),
            Icon(Icons.location_on,
              color: Color(0xFF2E3192),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down_sharp,
              color: Color(0xFF2E3192),)
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu,
              color: Color(0xFF2E3192),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Header(),
            SpecialDeal(),
          ],)
        ),
        
      ),
    );
  }
}