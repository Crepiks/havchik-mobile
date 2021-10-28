import 'package:flutter/material.dart';
import 'package:havchik/common/constants/app_colors.dart';

class SellerCard extends StatelessWidget {
  const SellerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
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
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/seller.jpeg'))),
          )
        ],
      ),
    );
  }
}
