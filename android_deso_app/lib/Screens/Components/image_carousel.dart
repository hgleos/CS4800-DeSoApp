import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

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
          final String image = widget.listingImages[index];
          if(image.startsWith('https://') || image.startsWith('lib/assets/')){
            return buildImage(image, index);
          } else {
            return buildNewImage(image);
          }
        },
        options: CarouselOptions(height: 400)
  );

  }

  Widget buildImage(String image, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    color: Colors.grey,
    child: (image.startsWith('https://')) ? Image.network(image, fit: BoxFit.cover,) : Image.asset(image, fit: BoxFit.cover),
  );

  Widget buildNewImage(path) {
    // final bytes = await File(path).readAsBytes();
    // final img.Image image = img.decodeImage(bytes);
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.file(File(path), fit: BoxFit.cover,)

    );
  }


}