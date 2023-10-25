import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpecialDeal extends StatefulWidget {
  const SpecialDeal({super.key});

  @override
  State<SpecialDeal> createState() => _SpecialDealState();
}

class _SpecialDealState extends State<SpecialDeal> {
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: PageView.builder(
            controller: controller,
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) =>
              Image.asset('assets/images/specialDeal.jpg',
                fit: BoxFit.cover,
              )
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
        SmoothPageIndicator(
            controller: controller,
            count: 6,
            effect: WormEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 8,
              spacing: 5,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
      ],
    );
  }
}
