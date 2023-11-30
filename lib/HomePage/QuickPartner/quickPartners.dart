import 'package:ecommerce/HomePage/QuickPartner/quiuckPartScroll.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickPartner extends StatefulWidget {
  const QuickPartner({super.key});

  @override
  State<QuickPartner> createState() => _QuickPartnerState();
}

class _QuickPartnerState extends State<QuickPartner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Quick Partner',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2E3192),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.018,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PremCard(),
            PremCard(),
            PremCard(),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PremCard(),
            PremCard(),
            Container(
              height: 100,
              width: 100,
              child: Center(
                child:TextButton(
                  onPressed: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuickPartnerScroll()),
                  );
                  },
                  child: Text('View More',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                  ),
                )
                ),
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
      ],
    );
  }
}


class PremCard extends StatefulWidget {
  const PremCard({super.key});

  @override
  State<PremCard> createState() => _PremCardState();
}

class _PremCardState extends State<PremCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/QuickPartner.JPG',
                  fit: BoxFit.cover,
                ),
                ),
            ),
            ),
            Positioned(
          top: 4,
          right: 4,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.crown,
                  color: Colors.yellowAccent,
                  size: 12,
                ),
                SizedBox(width: 2,),
                Text(
                  'Premium',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
          ],
        );
  }
}