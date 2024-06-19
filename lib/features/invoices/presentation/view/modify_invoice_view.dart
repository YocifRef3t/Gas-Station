import 'package:flutter/material.dart';
import 'package:gas_station_app/features/invoices/presentation/view/widgets/modify%20invoic%20view/widget/modify_invoice_body_view.dart';

class ModifyInvoiceView extends StatelessWidget {
  const ModifyInvoiceView({super.key, required this.isShow });
  final bool isShow;
  @override
  Widget build(BuildContext context) {
    return ModifyInvoiceBodyView(
      isOnlyShow: isShow,
    );
  }
}
