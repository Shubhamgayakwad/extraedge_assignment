// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:extraedge_assignment/models/product_model.dart';
import 'package:extraedge_assignment/theme/colors.dart';
import 'package:extraedge_assignment/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key, this.product});
  ProductModel? product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final List<String> _imageList = [];

  @override
  void initState() {
    super.initState();
    _imageList.addAll(widget.product!.flickrImages);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: ColorTheme.lightGrey,
        elevation: 0,
        title: Text(
          "Product Details",
          style: TextStyleTheme.HeadingH1(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Name:  ",
                    style: TextStyleTheme.HeadingH2(),
                  ),
                  Text(
                    widget.product!.name.toString(),
                    style:
                        TextStyleTheme.HeadingH2(color: ColorTheme.primaryGreen)
                            .copyWith(fontSize: 23),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  viewportFraction: 0.8,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeFactor: 0.3,
                ),
                items: _imageList
                    .map((item) => Center(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(item,
                              fit: BoxFit.cover, width: 1000),
                        )))
                    .toList(),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Active Status:  ",
                    style: TextStyleTheme.HeadingH2(),
                  ),
                  Text(
                    widget.product!.active.toString(),
                    style: TextStyleTheme.HeadingH2(
                        color: ColorTheme.primaryGreen),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    "Cost per launch:  ",
                    style: TextStyleTheme.HeadingH2(),
                  ),
                  Text(
                    widget.product!.costPerLaunch.toString(),
                    style: TextStyleTheme.HeadingH2(
                        color: ColorTheme.primaryGreen),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    "Success Rate percent:  ",
                    style: TextStyleTheme.HeadingH2(),
                  ),
                  Text(
                    "${widget.product!.costPerLaunch.toString()} %",
                    style: TextStyleTheme.HeadingH2(
                        color: ColorTheme.primaryGreen),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wikipedia link:  ",
                    style: TextStyleTheme.HeadingH2(),
                  ),
                  InkWell(
                    onTap: () {
                      launch(Uri.parse(widget.product!.wikipedia.toString()));
                    },
                    child: Text(
                      widget.product!.wikipedia.toString(),
                      style: TextStyleTheme.HeadingH3(color: Colors.blue),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    "Height:  ",
                    style: TextStyleTheme.HeadingH2(),
                  ),
                  Text(
                    "${widget.product!.height.meters} mtr",
                    style: TextStyleTheme.HeadingH2(
                        color: ColorTheme.primaryGreen),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    "Diameter:  ",
                    style: TextStyleTheme.HeadingH2(),
                  ),
                  Text(
                    "${widget.product!.diameter.meters} mtr",
                    style: TextStyleTheme.HeadingH2(
                        color: ColorTheme.primaryGreen),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description:  ",
                    style: TextStyleTheme.HeadingH2(),
                  ),
                  Text(
                    widget.product!.description.toString(),
                    style:
                        TextStyleTheme.HeadingH3(color: ColorTheme.primaryGreen)
                            .copyWith(fontWeight: FontWeight.normal),
                    softWrap: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> launch(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
