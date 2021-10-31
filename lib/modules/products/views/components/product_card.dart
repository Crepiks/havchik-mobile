import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:havchik/common/constants/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
      child: Row(children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/potato.jpeg'))),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Картошка",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Норм вкус, можно пожарить или сварить")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "4.5",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 6),
                      FaIcon(
                        FontAwesomeIcons.star,
                        size: 14,
                      )
                    ],
                  ),
                  const Text(
                    "500 ₸",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
