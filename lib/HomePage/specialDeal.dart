import 'package:flutter/material.dart';

class SpecialDeal extends StatefulWidget {
  const SpecialDeal({super.key});

  @override
  State<SpecialDeal> createState() => _SpecialDealState();
}

class _SpecialDealState extends State<SpecialDeal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) =>
          Image.asset('assets/images/specialDeal.jpg',
            fit: BoxFit.cover,
          )
      ),
    );
  }
}