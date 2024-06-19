import 'package:flutter/material.dart';
import 'package:gas_station_app/shared/widgets/custom_drop_down.dart';
import 'package:gas_station_app/shared/widgets/defult_button.dart';

import '../../../../../../core/theme/fonts.dart';
import '../../../../../../shared/widgets/text_form_field.dart';

class CreateInvoiceDetailsViewBody extends StatelessWidget {
  const CreateInvoiceDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("رقم الصنف"),
              ),
            ),
            const SizedBox(height: 16),
            CustomDropDown(
              hint: "إختر الصنف",
              onChanged: (value) {},
              value: null,
              items: const [],
            ),
            const SizedBox(height: 16),
            CustomDropDown(
              hint: "إختر الوحده",
              onChanged: (value) {},
              value: null,
              items: const [],
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("الكميه"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("السعر"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("اكراميات"),
              ),
            ),
            const SizedBox(height: 16),
            DefaultTextFormField(
              labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("الإجمالي"),
              ),
            ),
            const SizedBox(height: 50),
            DefaultButton(
              width: double.maxFinite,
              onPressed: () {},
              text: "حفظ و طباعه",
            ),
          ],
        ),
      ),
    );
  }
}
