import 'package:ecommerce/HomePage/QuickPartner/quickPartDetail.dart';
import 'package:ecommerce/HomePage/QuickPartner/quickPartners.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuickPartnerScroll extends StatefulWidget {
  const QuickPartnerScroll({super.key});

  @override
  State<QuickPartnerScroll> createState() => _QuickPartnerScrollState();
}

class _QuickPartnerScrollState extends State<QuickPartnerScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: IconThemeData(color: Color(0xFF2E3192)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text('Quick Partner',
            style: TextStyle(
              color: Color(0xFF2E3192),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search,
            color: Color(0xFF2E3192),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuickPartDetail()));
              },
              child: Container(
                height: 150,
                margin: EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PremCard(),
                            SizedBox(width: MediaQuery.of(context).size.height * 0.01,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Mukul Non Veg',
                                maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on,
                                    color: Colors.grey.shade600,
                                    ),
                                    Text('150 km',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                Container(
                                  height: 25,
                                  child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Meat',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF2E3192),
                                  ),
                                  ),
                                ),
                              ],
                            ),
                            ],
                        ),
                      ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 10),
                            child: FaIcon(FontAwesomeIcons.heart,
                            color: Colors.yellowAccent,)
                            ),
                    ],
                  )
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}