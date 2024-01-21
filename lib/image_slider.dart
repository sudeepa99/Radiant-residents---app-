import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainCarousel extends StatefulWidget {
  const MainCarousel({super.key});

  @override
  _MainCarouselState createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [
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
    false,
    false
  ];
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
    "assets/outdoor-swimming-pool.jpg",
    "assets/sunset-pool (1).jpg",
    "assets/ocean-travel-modern-nobody-infinity.jpg",
    "assets/hotel-lobby (1).jpg",
    "assets/luxury-classic-modern-bedroom-suite-hotel.jpg",
    "assets/banquet-table-with-snacks.jpg"
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
            aspectRatio: 16 / 9, // Adjust the aspectRatio for width
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
