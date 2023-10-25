import 'package:flutter/material.dart';

class WalletBalance extends StatefulWidget {
  const WalletBalance({super.key});

  @override
  State<WalletBalance> createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Wallet Balance',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF2E3192),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Icon(Icons.refresh,
                  color: Color(0xFF2E3192),
                  size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('₹ 0',
                  style: TextStyle(
                    fontSize: 50,
                    color: Color(0xFF2E3192),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Container(
                    height: 100,
                    child: Image.asset('assets/images/coin.png')
                    ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text('RECHARGE NOW',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF2E3192),
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
            Container(
            height: MediaQuery.of(context).size.height * 0.64,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, -4),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
                  Image.asset('assets/images/Gift.png',
                  height: 200,
                  ),
                  Text('Refer your friends and earn coins',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 5,),
                  Text('Pay at channel partner shops to earn cashback.',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
                  Text('You can also recharge through us to earn cashback.',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}