import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/modules/product.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/widget/product_card.dart';

List<Product> products = [
  Product(
    1,
    59,
    "headphones",
    "high quality",
    "images/airpod.png",
    "description 1",
  ),
  Product(
    2,
    1099,
    "Phon",
    "high quality",
    "images/mobile.png",
    "description 2",
  ),
  Product(
    3,
    39,
    "VR",
    "send you to other world",
    "images/class.png",
    "description 3",
  ),
  Product(
    4,
    56,
    "air phones",
    "for a long time",
    "images/headset.png",
    "description 4",
  ),
  Product(
    5,
    68,
    "speaker",
    "for your moments",
    "images/speaker.png",
    "description 5",
  ),
  Product(
    6,
    39,
    "cameras fpr pc",
    "high quality",
    "images/camera.png",
    "description 6",
  ),
];

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
          child: Stack(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Container(
            margin: EdgeInsets.only(top: 70),
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                                (context) =>
                                  DetailsScreen(
                                  product: products[index],
                                 )
                                 ),
                                 ),
                                 );
                    },
                  )),
        ],
      )),
    );
  }
}
