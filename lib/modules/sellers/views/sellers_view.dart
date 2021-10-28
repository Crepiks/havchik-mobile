import 'package:flutter/material.dart';
import 'package:havchik/common/constants/colors.dart';
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
          children: const [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SellersHeader())
          ],
        ));
  }
}
