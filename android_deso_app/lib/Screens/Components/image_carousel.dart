import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  ImageCarousel({Key? key, required this.listingImages}) : super(key: key);

  List listingImages;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: widget.listingImages.length,
        itemBuilder: (context, index, realIndex) {
          final image = widget.listingImages[index];

          return buildImage(image, index);
        },
        options: CarouselOptions(height: 400)
  );

  }

  Widget buildImage(String image, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    color: Colors.grey,
    child: (image.startsWith('https://')) ? Image.network(image, fit: BoxFit.cover,) : Image.asset(image, fit: BoxFit.cover),
  );


}