import 'package:flutter/material.dart';
import 'package:gas_station_app/core/theme/fonts.dart';

import 'floating_menu_button.dart';

class PumpItem extends StatelessWidget {
  const PumpItem({super.key, required this.img, required this.title});
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.all(8),
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.5,
                image: AssetImage(img),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Row(
                  children: [
                    FloatingMenuButton(),
                  ],
                ),
                Text(
                  title,
                  style: AppFonts.cairo20B,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
