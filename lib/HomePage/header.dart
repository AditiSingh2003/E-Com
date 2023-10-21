import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
            children: [
              IntrinsicHeight(
                child: Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'What do you want to shop today?',
                      prefixIcon: Icon(Icons.search,
                        color: Color(0xFF2E3192),
                      ),
                      border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2E3192)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wallet_outlined,
                        color: Color(0xFF2E3192),
                        size: 50,
                      ),
                      Text('Wallet',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E3192),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_offer_outlined,
                        color: Color(0xFF2E3192),
                        size: 50,
                      ),
                      Text('Deals',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E3192),
                        ),
                      )
                    ],
                  ),
                ),
              ),
                ],
              ),
              SizedBox(height: 30,),
            ],
          ),
    );
  }
}