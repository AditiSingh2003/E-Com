import 'package:flutter/material.dart';

class shopsAround extends StatefulWidget {
  const shopsAround({super.key});

  @override
  State<shopsAround> createState() => _shopsAroundState();
}

class _shopsAroundState extends State<shopsAround> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shops Around ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('View more',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) => 
                Card(
                  elevation: 5,
                  child: Container(
                    height: 300,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/QuickPartner.JPG',
                                fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Retail Store',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,
                                        color: Colors.grey.shade600,
                                        size: 15,
                                      ),
                                      Text('2.3 Km',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Button(),
                                  Button(),
                                  Button(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, right: 10),
                          child: Icon(Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          ),
                      ],
                    ),
                  ),
                  ),
              ),
          )
        ],
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Open',
              style: TextStyle(
                fontSize: 10,
                color: Colors.yellow,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF2E3192),
            ),
          ),
          SizedBox(width: 10,),
          ElevatedButton(
            onPressed: () {},
            child: Text('Call',
              style: TextStyle(
                fontSize: 10,
                color: Colors.yellow,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF2E3192),
            ),
          ),
        ],
      ),
    );
  }
}