import 'package:flutter/material.dart';
import 'package:stylish/Components/product_Card.dart';
import 'package:stylish/Components/section_title.dart';

import '../constants.dart';
import '../models/Product.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
          pressSeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: ProductCard(
                        image: demo_product[index].image,
                        title: demo_product[index].title,
                        price: demo_product[index].price,
                        press: () {},
                        bgColor: demo_product[index].bgColor,
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
