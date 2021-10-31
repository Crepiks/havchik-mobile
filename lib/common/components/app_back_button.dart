import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:havchik/common/constants/app_colors.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          height: 54,
          width: 54,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: AppColors.light,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const FaIcon(
            FontAwesomeIcons.chevronLeft,
            size: 20,
          )),
    );
  }
}
