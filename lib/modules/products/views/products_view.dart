import 'package:flutter/material.dart';
import 'package:havchik/common/constants/app_colors.dart';
import 'package:havchik/modules/products/views/components/product_card.dart';
import 'package:havchik/modules/products/views/components/products_header.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        children: const [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ProductsHeader()),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
              bottom: 20,
            ),
            child: Text(
              "Продукты",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: ProductCard(),
          )
        ],
      ),
    );
  }
}
