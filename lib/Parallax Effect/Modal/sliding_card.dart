import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Modal/card_modal.dart';
import '../Provider/effect_provider.dart';
import 'dart:math' as math;
import '../View/components/card_contant.dart';

class SlidingCardsView extends StatefulWidget {
  const SlidingCardsView({super.key});

  @override
  State<SlidingCardsView> createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);

    // Listen to page changes
    pageController.addListener(() {
      int currentPage = pageController.page?.round() ?? 0;
      Provider.of<CarouselProvider>(context, listen: false).setPage(currentPage);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      child: PageView.builder(
        clipBehavior: Clip.none,
        controller: pageController,
        itemCount: demoCardData.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: pageController,
            builder: (context, child) {
              double pageOffset = 0;
              if (pageController.position.haveDimensions) {
                pageOffset = pageController.page! - index;
              }
              double guess = math.exp(-(math.pow(pageOffset.abs() - 0.5, 2) / 0.08));
              return Transform.translate(
                offset: Offset(-32 * guess * pageOffset.sign, 0),
                child: Container(
                  clipBehavior: Clip.none,
                  margin: const EdgeInsets.only(left: 8, right: 8, bottom: 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(8, 20),
                        blurRadius: 24,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
                        child: Image.asset(
                          'Assets/${demoCardData[index].image}',
                          height: MediaQuery.of(context).size.height * 0.3,
                          fit: BoxFit.cover,
                          alignment: Alignment(pageOffset, 0),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: CardContent(
                          name: demoCardData[index].name,
                          date: demoCardData[index].date,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
