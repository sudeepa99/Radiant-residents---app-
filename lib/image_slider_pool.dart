import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainCarouselPool extends StatefulWidget {
  const MainCarouselPool({super.key});

  @override
  _MainCarouselPoolState createState() => _MainCarouselPoolState();
}

class _MainCarouselPoolState extends State<MainCarouselPool> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  int _current = 0;

  final List<String> images = [
    "assets/pool1 (1).jpg",
    "assets/pool1 (2).jpg",
    "assets/pool1 (3).jpg",
    "assets/pool1 (4).jpg",
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            height: screenSize.height / 2,
            enlargeCenterPage:
                true, // Adjust the height according to your needs
            aspectRatio: 16 / 6, // Adjust the aspectRatio for width
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                debugPrint(index.toString());
                _current = index;
                for (int i = 0; i < imageSliders.length; i++) {
                  if (i == index) {
                    _isSelected[i] = true;
                  } else {
                    _isSelected[i] = false;
                  }
                }
              });
            },
          ),
          carouselController: _controller,
        ),
      ],
    );
  }
}
