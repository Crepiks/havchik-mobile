import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:havchik/common/constants/app_colors.dart';
import 'package:havchik/common/entities/seller.dart';
import 'package:havchik/data/sellers.dart';
import 'package:havchik/modules/products/views/products_view.dart';
import 'package:havchik/modules/sellers/views/components/seller_card.dart';
import 'package:havchik/modules/sellers/views/components/sellers_header.dart';

class SellersView extends StatefulWidget {
  const SellersView({Key? key}) : super(key: key);

  @override
  _SellersViewState createState() => _SellersViewState();
}

class _SellersViewState extends State<SellersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: ListView(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SellersHeader()),
            const SizedBox(
              height: 4,
            ),
            ..._buildSellerCards(context, sellers)
          ],
        ));
  }

  List<Widget> _buildSellerCards(BuildContext context, List<Seller> sellers) {
    return sellers
        .map(
          (Seller seller) => GestureDetector(
            onTap: () {
              _navigateToProductsScreen(context, seller.id);
            },
            child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 14),
                child: SellerCard(seller: seller)),
          ),
        )
        .toList();
  }

  void _navigateToProductsScreen(BuildContext context, int sellerId) {
    Navigator.push(context,
        CupertinoPageRoute(builder: (context) => const ProductsView()));
  }
}
