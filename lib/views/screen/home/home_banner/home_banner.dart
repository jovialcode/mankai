import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:mankai/common/consts/COLOR_CONST.dart';
import 'package:mankai/views/widgets/horizontal_list.dart';
import 'package:mankai/views/widgets/shimmer_image.dart';

class WidgetHomeBanner extends StatefulWidget {
  @override
  _WidgetHomeBannerState createState() => _WidgetHomeBannerState();
}

class _WidgetHomeBannerState extends State<WidgetHomeBanner> {
  final aspectRatioBanner = 16 / 9;
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildCarouselSlider(),
    );
  }

  Widget _buildCarouselSlider() {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          items: [],
          options: CarouselOptions(
            aspectRatio: aspectRatioBanner,
            viewportFraction: 1.0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            pauseAutoPlayOnTouch: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        _buildIndicators(),
      ],
    );
  }

  _buildIndicators() {
    return Positioned(
      left: 12,
      right: 0,
      bottom: 12,
      child: Container(
        child: WrapContentHozListView(
          list: [],
          itemBuilder: (context, index) {
            return _buildIndicatorNormal(currentIndex == index);
          },
        ),
      ),
    );
  }

  _buildIndicatorNormal(bool isSelected) {
    return Container(
      height: isSelected ? 5 : 4,
      width: isSelected ? 18 : 16,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isSelected ? COLOR_CONST.WHITE : COLOR_CONST.WHITE_50,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    );
  }
}
