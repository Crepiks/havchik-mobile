import 'package:flutter/material.dart';
import 'package:havchik/common/components/app_back_button.dart';
import 'package:havchik/common/components/profile_button.dart';

class ProductsHeader extends StatelessWidget {
  const ProductsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [AppBackButton(), ProfileButton()],
      ),
    );
  }
}
