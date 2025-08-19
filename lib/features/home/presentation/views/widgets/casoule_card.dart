import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance_app/features/home/presentation/views/widgets/card_item.dart';
import 'package:flutter/material.dart';

class CasouleCard extends StatelessWidget {
  const CasouleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.3,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        enlargeCenterPage: true,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CardItem();
          },
        );
      }).toList(),
    );
  }
}
