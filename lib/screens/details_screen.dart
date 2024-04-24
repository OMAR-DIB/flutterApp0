import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/modules/product.dart';
import 'package:store_app/widget/details/details_body.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text("HeLLo UsEr :)"),
      ),
      body: DetailsBody(product: product,),
    );
  }
}
