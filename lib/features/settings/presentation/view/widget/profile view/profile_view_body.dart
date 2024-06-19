import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gas_station_app/core/app_utils/extension.dart';
import 'package:gas_station_app/core/router/app_router.dart';
import 'package:gas_station_app/core/theme/app_colors.dart';
import 'package:gas_station_app/core/theme/fonts.dart';
import 'package:gas_station_app/shared/widgets/profile_avatar.dart';
import 'package:go_router/go_router.dart';

import 'profile_icon.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, right: 24, left: 24),
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: const BoxDecoration(
        color: AppColors.appbarColor,
      ),
      child: Column(
        children: [
          Image.asset("elcaptin logo".png(), height: 50),
          const SizedBox(height: 50),
          const ProfileAvatar(
            width: 100,
            height: 100,
            iconSize: 85,
          ),
          const SizedBox(height: 24),
          const Text(
            "Shaban",
            style: AppFonts.cairo20B,
          ),
          const SizedBox(height: 4),
          const Text(
            "shaban@elcapten.com",
            style: AppFonts.fonts15B,
          ),
          const SizedBox(height: 71),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ProfileButton(
                title: "تسجيل الخروج",
                icon: Icons.exit_to_app_sharp,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(
                    AppRouter.kProfileDetailsViewPath,
                  );
                },
                child: const ProfileButton(
                  title: "الملف الشخصي",
                  icon: Icons.person,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
