import 'package:flutter/material.dart';
import 'package:gas_station_app/core/app_utils/extension.dart';
import 'package:gas_station_app/shared/widgets/defult_button.dart';
import 'package:gas_station_app/shared/widgets/text_form_field.dart';
import '../../../../../../core/theme/fonts.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "elcaptin_main_logo".png(),
              height: 67,
            ),
            const SizedBox(height: 107),
            Text(
              "تغيير كلمة المرور",
              style: AppFonts.font24SB.copyWith(color: Colors.black),
            ),
            const SizedBox(height: 39),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("كلمة المرور القديمه"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("كلمة المرور الجديده"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("تأكيد كلمة المرور "),
              ),
            ),
            const SizedBox(height: 82),
            DefaultButton(
              width: double.maxFinite,
              onPressed: () {},
              text: "حفظ",
            ),
          ],
        ),
      ),
    );
  }
}
