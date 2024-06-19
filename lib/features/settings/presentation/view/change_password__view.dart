import 'package:flutter/material.dart';
import 'package:gas_station_app/features/settings/presentation/view/widget/change%20Password%20view/change_password_view_body.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ChangePasswordViewBody(),
      ),
    );
  }
}
