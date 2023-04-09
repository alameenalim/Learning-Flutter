import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      home: CSlider(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
    ),
  ));
}

class CSlider extends StatelessWidget {
  const CSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: List.generate(
              10,
              (index) => Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/860227/pexels-photo-860227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  )),
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: .5,
            height: MediaQuery.of(context).size.height,
            enlargeCenterPage: true,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlayCurve: Curves.easeInBack,
            enableInfiniteScroll: true,
          )),
    );
  }
}
