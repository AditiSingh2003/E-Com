import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text('Category',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text('View more',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cate(
                imageCont:'assets/images/colthing.jpg',
                subHead: 'Clothing'),
              Cate(
                imageCont:'assets/images/restaurants.jpg',
                subHead: 'Restaurants'),
              Cate(
                imageCont: 'assets/images/mobile.jpg',
                subHead: 'Mobile'),
              Cate(
                imageCont: 'assets/images/electronics.jpg',
                subHead: 'Electronics'),
            ],
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}


class Cate extends StatefulWidget {
  final String imageCont;
  final String subHead;

  const Cate({
    Key? key,
    required this.imageCont,
    required this.subHead,
  }) : super(key: key);

  @override
  State<Cate> createState() => _CateState();
}

class _CateState extends State<Cate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.imageCont,
              fit: BoxFit.cover,
              height: 50,
              width: 50,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            widget.subHead,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF2E3192),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
