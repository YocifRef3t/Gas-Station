import 'package:flutter/material.dart';
import 'package:gas_station_app/core/router/app_router.dart';
import 'package:gas_station_app/core/theme/fonts.dart';
import 'package:gas_station_app/features/invoices/presentation/view/widgets/create%20invoice%20view/create_invoice_data.dart';
import 'package:gas_station_app/shared/widgets/defult_button.dart';
import 'package:gas_station_app/shared/widgets/text_form_field.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../shared/widgets/custom_drop_down.dart';

class CreateInvoiceViewBody extends StatefulWidget {
  const CreateInvoiceViewBody({super.key});

  @override
  State<CreateInvoiceViewBody> createState() => _CreateInvoiceViewBodyState();
}

class _CreateInvoiceViewBodyState extends State<CreateInvoiceViewBody>
    with CreateInvoiceData {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          DefaultTextFormField(
            labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
            label: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("تاريخ الفاتوره"),
            ),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            onChanged: (value) {},
            hint: "إختر طريقة الدفع",
            value: null,
            items: payTypeItems,
          ),
          const SizedBox(height: 16),
          DefaultTextFormField(
            labelStyle: AppFonts.cairo20B.copyWith(color: Colors.black54),
            label: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("العميل"),
            ),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            onChanged: (value) {},
            hint: "إختر الورديه",
            value: null,
            items: shiftItems,
          ),
          const SizedBox(height: 84),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultButton(
                onPressed: () {
                  GoRouter.of(context).push(
                    AppRouter.kAddCustomerViewPath,
                  );
                },
                icon: Icons.person_add_alt,
                text: "إضافة عميل ",
              ),
              DefaultButton(
                onPressed: () {
                  GoRouter.of(context).push(
                    AppRouter.kCreateInvoiceDetailsViewPath,
                  );
                },
                text: "التالي",
              ),
            ],
          )
        ],
      ),
    );
  }
}
