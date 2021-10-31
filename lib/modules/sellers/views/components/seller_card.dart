import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:havchik/common/constants/app_colors.dart';
import 'package:havchik/common/entities/seller.dart';

class SellerCard extends StatelessWidget {
  final Seller seller;

  const SellerCard({Key? key, required this.seller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.light,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 6,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${seller.image}'))),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(seller.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(seller.address)
                  ],
                ),
                Row(
                  children: [
                    Text(
                      seller.productsNumber.toString(),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(width: 4),
                    const FaIcon(
                      FontAwesomeIcons.shoppingCart,
                      size: 14,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      seller.rating.toString(),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(width: 4),
                    const FaIcon(
                      FontAwesomeIcons.star,
                      size: 14,
                    )
                  ],
                )
              ],
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 6),
              child: FaIcon(
                FontAwesomeIcons.chevronRight,
                size: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
