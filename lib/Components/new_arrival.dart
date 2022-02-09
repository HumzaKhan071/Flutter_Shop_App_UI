import 'package:flutter/material.dart';
import 'package:stylish/Components/product_Card.dart';
import 'package:stylish/Components/section_title.dart';
import 'package:stylish/screens/Detail/detail_screen.dart';

import '../constants.dart';
import '../models/Product.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          pressSeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: ProductCard(
                        image: demo_product[index].image,
                        title: demo_product[index].title,
                        price: demo_product[index].price,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DetailScreen(
                                        product: demo_product[index],
                                      )));
                        },
                        bgColor: demo_product[index].bgColor,
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
