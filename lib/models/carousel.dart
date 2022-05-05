import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> images = [
  'images/food1.jpg',
  'images/food2.jfif',
  'images/food3.jfif'
];

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  final List<Widget> imageSliders = images
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item,
                          fit: BoxFit.cover, width: double.infinity),
                    ],
                  )),
            ),
          ))
      .toList();
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: CarouselSlider(
    //     items: images
    //         .map((item) => Container(
    //               child: ClipRRect(
    //                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
    //                   child: Stack(
    //                     fit: StackFit.expand,
    //                     children: <Widget>[
    //                       // Row(
    //                       //   mainAxisAlignment: MainAxisAlignment.center,
    //                       //   children: images.asMap().entries.map((entry) {
    //                       //     return GestureDetector(
    //                       //       onTap: () => _controller.animateToPage(entry.key),
    //                       //       child: Container(
    //                       //         width: 50.0,
    //                       //         height: 4.0,
    //                       //         margin: EdgeInsets.symmetric(
    //                       //             vertical: 8.0, horizontal: 4.0),
    //                       //         decoration: BoxDecoration(
    //                       //             shape: BoxShape.rectangle,
    //                       //             color: (Theme.of(context).brightness ==
    //                       //                         Brightness.dark
    //                       //                     ? Colors.grey
    //                       //                     : Color(0xFFFFBA38))
    //                       //                 .withOpacity(
    //                       //                     _current == entry.key ? 0.9 : 0.2)),
    //                       //       ),
    //                       //     );
    //                       //   }).toList(),
    //                       // ),
    //                       Image.asset(
    //                         item,
    //                         fit: BoxFit.cover,
    //                         width: 1000.0,
    //                       ),
    //                     ],
    //                   )),
    //             ))
    //         .toList(),
    //     carouselController: _controller,
    //     options: CarouselOptions(
    //         viewportFraction: 1.0,
    //         autoPlay: true,
    //         aspectRatio: 2.0,
    //         onPageChanged: (index, reason) {
    //           setState(() {
    //             _current = index;
    //           });
    //         }),
    //   ),
    // );
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              // aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: images.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 50.0,
              height: 4.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.grey
                          : Color(0xFFFFBA38))
                      .withOpacity(_current == entry.key ? 0.9 : 0.2)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
