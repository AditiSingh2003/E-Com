import 'package:flutter/material.dart'; 

class TopBrands extends StatefulWidget {
  const TopBrands({super.key});

  @override
  State<TopBrands> createState() => _TopBrandsState();
}

class _TopBrandsState extends State<TopBrands> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text('Top Brands',
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BrandImg(
                BrandImage: 'assets/images/bmw.png',
              ),
              BrandImg(
                BrandImage: 'assets/images/mercedes.png',
              ),
              BrandImg(
                BrandImage: 'assets/images/insta.png',
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BrandImg(
                BrandImage: 'assets/images/mercedes.png',
              ),
              BrandImg(
                BrandImage: 'assets/images/bmw.png',
              ),
              BrandImg(
                BrandImage: 'assets/images/insta.png',
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BrandImg(
                BrandImage: 'assets/images/insta.png',
              ),
              BrandImg(
                BrandImage: 'assets/images/mercedes.png',
              ),
              BrandImg(
                BrandImage: 'assets/images/bmw.png',
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
        ],
      ),
    );
  }
}

class BrandImg extends StatefulWidget {
  final BrandImage;
  
    const BrandImg({
    Key? key,
    required this.BrandImage,
  }) : super(key: key);

  @override
  State<BrandImg> createState() => _BrandImgState();
}

class _BrandImgState extends State<BrandImg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: Image.asset(
        widget.BrandImage,
        ),
    );
  }
}