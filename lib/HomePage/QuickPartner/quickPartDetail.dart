import 'package:ecommerce/HomePage/QuickPartner/quiuckPartScroll.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuickPartDetail extends StatefulWidget {
  const QuickPartDetail({super.key});

  @override
  State<QuickPartDetail> createState() => _QuickPartDetailState();
}

class _QuickPartDetailState extends State<QuickPartDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset('assets/images/QuickPartner.JPG',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 400,
                  ),
                ),
              ),
              Positioned(
              top: 20,
              left: 10,
              child: Container(
                height:40,
                decoration: BoxDecoration(
                  color: Color(0xFF2E3192).withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back,
                  color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuickPartnerScroll()),
                  );
                  },
                ),
              ),
            ),
            Positioned(
        bottom: 10,
        left: 10,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xFF2E3192).withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              FaIcon(FontAwesomeIcons.crown,
              color: Colors.yellowAccent,
              size: 10,
              ),
              SizedBox(width: 5,),
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
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mukul General Store',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
              Text(
                '6F3X+Q48, Jawahar Nagar, Bharatpur, Rajasthan 321001, India',
                maxLines: 2,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
              Text('You can soon avail rewards on paytm through app at this shop!',
              maxLines: 2,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF25D366),
              ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.010,),
              ElevatedButton(
            onPressed: () {},
            child: Text('Grocery',
              style: TextStyle(
                fontSize: 10,
                color: Colors.yellow,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF2E3192).withOpacity(0.5),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.010,),
            Row(
              children: [
                Text('Open now',
                style: TextStyle(
                  color: Color(0xFF2E3192),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                ),
                SizedBox(width: MediaQuery.of(context).size.height * 0.010,),
                Icon(Icons.arrow_drop_down_outlined,
                color: Color(0xFF2E3192),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.010,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                openNowButton(
                  IconDa: FontAwesomeIcons.heart,
                  subHeading: 'Favourite',
                ),
                openNowButton(
                  IconDa: FontAwesomeIcons.share,
                  subHeading: 'Share',
                ),
                openNowButton(
                  IconDa: FontAwesomeIcons.directions,
                  subHeading: 'Directions',
                ),
                openNowButton(
                  IconDa: FontAwesomeIcons.phone,
                  subHeading: 'Call',
                ),
              ],
            ),
              ],
            ),
          )
        ],
      ),
      bottomSheet: Container(
        height: 50,
        width: double.infinity,
        color: Color(0xFF2E3192),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pay Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            ),
            SizedBox(width: 10,),
            Icon(Icons.arrow_forward_rounded,
            color: Colors.white,
            ),
          ],
        ),
      )
    );
  }
}

class openNowButton extends StatefulWidget {
  final IconDa;
  final subHeading;
  const openNowButton({
    super.key,
    this.IconDa,
    this.subHeading,
  });

  @override
  State<openNowButton> createState() => _openNowButtonState();
}

class _openNowButtonState extends State<openNowButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                      decoration: BoxDecoration
                      (
                        border: Border.all(
                          color: Color(0xFF2E3192),
                        ),
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      height: 50,
                      child: IconButton(
                      onPressed: () {},
                      icon:FaIcon(widget.IconDa,
                      color: Color(0xFF2E3192),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF2E3192),
                      ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(widget.subHeading,
                    style: TextStyle(
                      color: Color(0xFF2E3192),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
      ],
    );
  }
}