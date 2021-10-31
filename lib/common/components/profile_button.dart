import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:havchik/common/constants/app_colors.dart';
import 'package:havchik/modules/profile/views/profile_view.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            CupertinoPageRoute(builder: (context) => const ProfileView()));
      },
      child: Container(
        height: 54,
        width: 54,
        decoration: const BoxDecoration(
            color: AppColors.light,
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: const Center(
          child: FaIcon(
            FontAwesomeIcons.user,
            size: 20,
          ),
        ),
      ),
    );
  }
}
