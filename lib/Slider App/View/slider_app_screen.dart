import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Provider/slider_provider.dart';

class SliderAppScreen extends StatelessWidget {
  const SliderAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "Assets/Img/Slider App/screen${index + 1}.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              initialPage: sliderProvider.currentPage,
              height: MediaQuery.of(context).size.height,
              enlargeCenterPage: false,
              scrollDirection: Axis.vertical,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                sliderProvider.setCurrentPage(index);
              },
            ),
          ),
          Container(
            height: 65,
            width: double.infinity,
            color: Colors.black26,
            child: Row(
              children: [
                const SizedBox(
                  width: 60,
                ),
                Image.asset("Assets/Img/Slider App/logo.png"),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      'Collection',
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Best Sellers',
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Custom Design',
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      CupertinoIcons.person_alt,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      CupertinoIcons.bag,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: sliderProvider.currentPage == index
                        ? Colors.yellow
                        : Colors.yellow.shade50,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
