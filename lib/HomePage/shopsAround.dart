import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
                style: GoogleFonts.poppins(
                  color: Color(0xFF2E3192),
                  fontSize: 20,
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
          Container(
            height: 160,
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
                            SizedBox(width: MediaQuery.of(context).size.width * 0.025,),
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
                                  SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
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
                          child: FaIcon(FontAwesomeIcons.heart,
                            color: Colors.yellowAccent,)
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