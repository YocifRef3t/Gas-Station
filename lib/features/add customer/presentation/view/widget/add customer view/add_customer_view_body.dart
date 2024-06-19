import 'package:flutter/material.dart';
import 'package:gas_station_app/shared/widgets/defult_button.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/theme/fonts.dart';
import '../../../../../../shared/widgets/text_form_field.dart';

class AddCustomerViewBody extends StatelessWidget {
  const AddCustomerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("اسم العميل"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("رقم الهاتف"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("البريد الإلكتروني"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("العنوان"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("مرجع"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("الرقم الضريبي"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("الدوله"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("المدينه"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("المنطقه"),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  text: "رجوع",
                ),
                DefaultButton(
                  onPressed: () {},
                  text: "إضافه",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
