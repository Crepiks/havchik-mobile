import 'package:flutter/material.dart';
import 'package:havchik/common/components/app_back_button.dart';

class ProductsHeader extends StatelessWidget {
  const ProductsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [AppBackButton()],
      ),
    );
  }
}
