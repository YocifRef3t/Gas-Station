import 'package:flutter/material.dart';
import 'package:gas_station_app/features/settings/presentation/view/widget/profile%20view/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ProfileViewBody(),
      ),
    );
  }
}
