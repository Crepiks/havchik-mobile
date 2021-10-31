import 'package:flutter/material.dart';
import 'package:havchik/common/components/notifications_button.dart';
import 'package:havchik/common/components/profile_button.dart';

class SellersHeader extends StatelessWidget {
  const SellersHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [NotificationsButton(), ProfileButton()],
      ),
    );
  }
}
