import 'package:flutter/material.dart';

class SellersHeader extends StatelessWidget {
  const SellersHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: const [
          Text(
            "Поставщики",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
